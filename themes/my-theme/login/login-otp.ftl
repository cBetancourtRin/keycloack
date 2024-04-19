<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('totp'); section>
    <#if section="header">
        ${msg("doLogIn")}
    <#elseif section = "title">
        ${msg("totpHeaderTab")}  
        <#elseif section="form">
        <section id="login-otp-template">   
        <img id="score-logo" src="${url.resourcesPath}/img/score_logo.png" alt="Score Logo" />
        
        <article id="description-login-otp">
            <h1>${msg("twoFactorAuth")}</h1>
            <p>${msg("descTwoFactorAuth")}</p>
            <form id="form-qr-login" action="${url.loginAction}" method="post">

                <#--  ciclo para verificar si alguna vez se autentico usuario -->
                <#if otpLogin.userOtpCredentials?size gt 1>
                    <#--  lista de dispositivos que ha registrado el usuario -->
                    
                    <div id="list-devices">
                        <#list otpLogin.userOtpCredentials as otpCredential>
                            <div id="item-device">
                                <input 
                                    type="radio" 
                                    name="selectedCredentialId" 
                                    value="${otpCredential.id}" 
                                    <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>>                     
                                <label for="kc-otp-credential-${otpCredential?index}" tabindex="${otpCredential?index}"> 
                                    ${otpCredential.userLabel}
                                </label>
                            </div>
                        </#list>                   
                    </div>
                    
                </#if>

                <div class="mb-3">
                  <input
                    type="number"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    placeholder="Ejemplo 123456 (sin espacios ni símbolos adicionales)"
                    name="otp" 
                    autocomplete="off" 
                    autofocus 
                    aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"
                  />
                  <div id="code-help" class="form-text">
                    
                  </div>
                </div>  

                <#if messagesPerField.existsError('totp')>
                    <span id="input-error-otp-code" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                    </span>
                </#if>             
                
                  <button type="submit" class="btn btn-primary" id="send-login-code">
                    ${msg("buttonSend")}
                    </button>
              </form>

        </article>

        <p id="copy-login-totp">${msg("copyrightText")}</p>

        </section>

    </#if>
</@layout.registrationLayout>