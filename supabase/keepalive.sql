-- =====================================================================
-- Restavia — keep-alive: echte database-activiteit (schrijven) voor de
-- dagelijkse GitHub-wekker. Eenmalig uitvoeren in de Supabase SQL Editor.
-- Opnieuw uitvoeren is veilig.
--
-- Waarom: Supabase pauzeert gratis projecten bij "onvoldoende activiteit".
-- Alleen af en toe iets lezen telt niet altijd mee; een kleine schrijfactie
-- wél. Deze functie werkt één regel bij (tijdstip + teller) en doet verder
-- niets — geen gebruikersdata, geen toegang tot andere tabellen.
-- =====================================================================

create table if not exists public.keepalive (
  id int primary key default 1 check (id = 1),   -- precies één regel
  last_ping timestamptz not null default now(),
  pings bigint not null default 0,
  source text
);
alter table public.keepalive enable row level security;
-- Bewust geen policies: de tabel is alleen via de functie hieronder te raken.

create or replace function public.keepalive_ping(p_source text default 'github')
returns jsonb language plpgsql security definer set search_path = public as $$
declare r public.keepalive%rowtype;
begin
  insert into public.keepalive (id, last_ping, pings, source)
  values (1, now(), 1, left(coalesce(p_source, '?'), 40))
  on conflict (id) do update
    set last_ping = now(), pings = public.keepalive.pings + 1, source = excluded.source
  returning * into r;
  return jsonb_build_object('ok', true, 'last_ping', r.last_ping, 'pings', r.pings);
end; $$;

revoke all on function public.keepalive_ping(text) from public;
grant execute on function public.keepalive_ping(text) to anon, authenticated;

-- Controle: moet een regel met ok=true teruggeven
select public.keepalive_ping('installatie');
