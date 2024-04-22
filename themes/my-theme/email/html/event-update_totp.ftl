<#--  Cuando agregamos otro dispositivo con codigo qr  -->
<#import "template.ftl" as layout>
<@layout.emailLayout>
    <h1>event-update-totp </h1>  
    ${kcSanitize(msg("eventUpdateTotpBodyHtml",event.date, event.ipAddress))?no_esc}
</@layout.emailLayout>

