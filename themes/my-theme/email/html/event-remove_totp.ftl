<#--  Cuando eliminamos un dispositivo de OTP 2f  -->
<#--  Plntilla que no se encuentra operando acutalmente  -->

<h1>REMOVING OTP 2f</h1>

<#import "template.ftl" as layout>
    <@layout.emailLayout>
        ${kcSanitize(msg("eventRemoveTotpBodyHtml",event.date, event.ipAddress))?no_esc}
    </@layout.emailLayout>