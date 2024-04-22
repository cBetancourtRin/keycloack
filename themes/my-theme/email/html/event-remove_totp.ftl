<#--  Cuando eliminamos un dispositivo de OTP 2f  -->
<#--  Plntilla que no se encuentra operando acutalmente  -->

<h1>event-remove-totp</h1>

<#import "template.ftl" as layout>
    <@layout.emailLayout>
        ${kcSanitize(msg("eventRemoveTotpBodyHtml",event.date, event.ipAddress))?no_esc}
    </@layout.emailLayout>