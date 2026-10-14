# Restavia — e-mailtemplates voor Supabase Auth

Plakken in: **Supabase → Authentication → Emails → Templates**.
Per template: vul het **Subject** in en vervang de **Message body** door de HTML hieronder (tabblad "Source"). Daarna **Save**.

---

## 1. Confirm signup (bevestigen registratie)

**Subject:** `Bevestig je e-mailadres voor Restavia`

```html
<div style="background:#FAFAF7;padding:32px 16px;font-family:Arial,Helvetica,sans-serif;color:#243E4A">
  <div style="max-width:480px;margin:0 auto;background:#FFFFFF;border-radius:16px;padding:32px 28px;border:1px solid #E6F3F7">
    <div style="text-align:center;margin-bottom:20px">
      <img src="https://restavia.web.app/restavia-logo.png" alt="Restavia" width="120" style="width:120px;height:auto">
      <div style="font-family:Georgia,serif;font-size:28px;color:#31566F;margin-top:6px">Restavia</div>
      <div style="font-size:11px;letter-spacing:3px;color:#4F7EAB;margin-top:4px">BREATHE. FEEL. FLOW.</div>
    </div>
    <h1 style="font-size:20px;color:#31566F;margin:0 0 12px">Welkom bij Restavia</h1>
    <p style="font-size:15px;line-height:1.6;margin:0 0 20px">Fijn dat je er bent. Bevestig je e-mailadres om je account te activeren. Daarna kun je inloggen en worden je sessies en voortgang bewaard.</p>
    <p style="text-align:center;margin:0 0 24px">
      <a href="{{ .ConfirmationURL }}" style="display:inline-block;background:#31566F;color:#FFFFFF;text-decoration:none;font-weight:bold;font-size:15px;padding:13px 28px;border-radius:999px">E-mailadres bevestigen</a>
    </p>
    <p style="font-size:13px;line-height:1.5;color:#5F7482;margin:0">Heb je geen account aangemaakt bij Restavia? Dan kun je deze e-mail negeren.</p>
  </div>
  <p style="text-align:center;font-size:12px;color:#5F7482;margin:16px 0 0">Restavia — een initiatief van Domein Stam · restavia@domeinstam.nl</p>
</div>
```

---

## 2. Reset password (wachtwoord vergeten)

**Subject:** `Stel een nieuw wachtwoord in voor Restavia`

```html
<div style="background:#FAFAF7;padding:32px 16px;font-family:Arial,Helvetica,sans-serif;color:#243E4A">
  <div style="max-width:480px;margin:0 auto;background:#FFFFFF;border-radius:16px;padding:32px 28px;border:1px solid #E6F3F7">
    <div style="text-align:center;margin-bottom:20px">
      <img src="https://restavia.web.app/restavia-logo.png" alt="Restavia" width="120" style="width:120px;height:auto">
      <div style="font-family:Georgia,serif;font-size:28px;color:#31566F;margin-top:6px">Restavia</div>
      <div style="font-size:11px;letter-spacing:3px;color:#4F7EAB;margin-top:4px">BREATHE. FEEL. FLOW.</div>
    </div>
    <h1 style="font-size:20px;color:#31566F;margin:0 0 12px">Nieuw wachtwoord instellen</h1>
    <p style="font-size:15px;line-height:1.6;margin:0 0 20px">We kregen een verzoek om het wachtwoord van je Restavia-account opnieuw in te stellen. Klik op de knop om een nieuw wachtwoord te kiezen.</p>
    <p style="text-align:center;margin:0 0 24px">
      <a href="{{ .ConfirmationURL }}" style="display:inline-block;background:#31566F;color:#FFFFFF;text-decoration:none;font-weight:bold;font-size:15px;padding:13px 28px;border-radius:999px">Nieuw wachtwoord kiezen</a>
    </p>
    <p style="font-size:13px;line-height:1.5;color:#5F7482;margin:0">Heb je dit niet aangevraagd? Dan kun je deze e-mail negeren; je wachtwoord blijft ongewijzigd.</p>
  </div>
  <p style="text-align:center;font-size:12px;color:#5F7482;margin:16px 0 0">Restavia — een initiatief van Domein Stam · restavia@domeinstam.nl</p>
</div>
```

---

## 3. Change email address (e-mailadres wijzigen)

**Subject:** `Bevestig je nieuwe e-mailadres voor Restavia`

```html
<div style="background:#FAFAF7;padding:32px 16px;font-family:Arial,Helvetica,sans-serif;color:#243E4A">
  <div style="max-width:480px;margin:0 auto;background:#FFFFFF;border-radius:16px;padding:32px 28px;border:1px solid #E6F3F7">
    <div style="text-align:center;margin-bottom:20px">
      <img src="https://restavia.web.app/restavia-logo.png" alt="Restavia" width="120" style="width:120px;height:auto">
      <div style="font-family:Georgia,serif;font-size:28px;color:#31566F;margin-top:6px">Restavia</div>
      <div style="font-size:11px;letter-spacing:3px;color:#4F7EAB;margin-top:4px">BREATHE. FEEL. FLOW.</div>
    </div>
    <h1 style="font-size:20px;color:#31566F;margin:0 0 12px">Nieuw e-mailadres bevestigen</h1>
    <p style="font-size:15px;line-height:1.6;margin:0 0 20px">Je wilt het e-mailadres van je Restavia-account wijzigen van {{ .Email }} naar {{ .NewEmail }}. Bevestig dit met de knop hieronder.</p>
    <p style="text-align:center;margin:0 0 24px">
      <a href="{{ .ConfirmationURL }}" style="display:inline-block;background:#31566F;color:#FFFFFF;text-decoration:none;font-weight:bold;font-size:15px;padding:13px 28px;border-radius:999px">Wijziging bevestigen</a>
    </p>
    <p style="font-size:13px;line-height:1.5;color:#5F7482;margin:0">Heb je dit niet aangevraagd? Dan kun je deze e-mail negeren.</p>
  </div>
  <p style="text-align:center;font-size:12px;color:#5F7482;margin:16px 0 0">Restavia — een initiatief van Domein Stam · restavia@domeinstam.nl</p>
</div>
```

---

## 4. Magic link (inloggen via link)

**Subject:** `Je inloglink voor Restavia`

```html
<div style="background:#FAFAF7;padding:32px 16px;font-family:Arial,Helvetica,sans-serif;color:#243E4A">
  <div style="max-width:480px;margin:0 auto;background:#FFFFFF;border-radius:16px;padding:32px 28px;border:1px solid #E6F3F7">
    <div style="text-align:center;margin-bottom:20px">
      <img src="https://restavia.web.app/restavia-logo.png" alt="Restavia" width="120" style="width:120px;height:auto">
      <div style="font-family:Georgia,serif;font-size:28px;color:#31566F;margin-top:6px">Restavia</div>
      <div style="font-size:11px;letter-spacing:3px;color:#4F7EAB;margin-top:4px">BREATHE. FEEL. FLOW.</div>
    </div>
    <h1 style="font-size:20px;color:#31566F;margin:0 0 12px">Inloggen bij Restavia</h1>
    <p style="font-size:15px;line-height:1.6;margin:0 0 20px">Klik op de knop om in te loggen. Deze link werkt één keer.</p>
    <p style="text-align:center;margin:0 0 24px">
      <a href="{{ .ConfirmationURL }}" style="display:inline-block;background:#31566F;color:#FFFFFF;text-decoration:none;font-weight:bold;font-size:15px;padding:13px 28px;border-radius:999px">Inloggen</a>
    </p>
    <p style="font-size:13px;line-height:1.5;color:#5F7482;margin:0">Heb je dit niet aangevraagd? Dan kun je deze e-mail negeren.</p>
  </div>
  <p style="text-align:center;font-size:12px;color:#5F7482;margin:16px 0 0">Restavia — een initiatief van Domein Stam · restavia@domeinstam.nl</p>
</div>
```
