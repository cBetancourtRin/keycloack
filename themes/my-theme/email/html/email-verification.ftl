<#--  cuando un user va a inicar sesion por primero vez y el email esta marcado como verificado  -->
<#import "template.ftl" as layout>
    <@layout.emailLayout>
        <h1>EMAIL-VERIFICATION</h1>
        ${kcSanitize(msg("emailVerificationBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
    </@layout.emailLayout>