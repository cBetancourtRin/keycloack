<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('totp'); section>
    <#if section="header">
        ${msg("doLogIn")}
    <#elseif section="form">

    <h1>Login-otp</h1>


        <form id="kc-otp-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}"
            method="post">
            <#if otpLogin.userOtpCredentials?size gt 1>
            <h1>mapeo 1</h1>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcInputWrapperClass!}">
                    <#--  ciclo de dispositivos -->
                        <#list otpLogin.userOtpCredentials as otpCredential>
                            <input id="kc-otp-credential-${otpCredential?index}" class="${properties.kcLoginOTPListInputClass!}" type="radio" name="selectedCredentialId" value="${otpCredential.id}" <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>>
                            
                            <label for="kc-otp-credential-${otpCredential?index}" class="${properties.kcLoginOTPListClass!}" tabindex="${otpCredential?index}">                                
                                <span class="${properties.kcLoginOTPListItemHeaderClass!}">                                    
                                    <span class="${properties.kcLoginOTPListItemIconBodyClass!}">
                                      <i class="${properties.kcLoginOTPListItemIconClass!}" aria-hidden="true"></i>
                                    </span>
                                    <span class="${properties.kcLoginOTPListItemTitleClass!}">${otpCredential.userLabel}</span>
                                </span>
                            </label>
                        </#list>
                    </div>
                </div>
            </#if>

        <div class="${properties.kcFormGroupClass!}">
            <h1>Aqui estoy</h1>
            <div class="${properties.kcLabelWrapperClass!}">
                <label for="otp" class="${properties.kcLabelClass!}"> <h1>mapeo 5</h1>${msg("loginOtpOneTime")}</label>
            </div>

            <div class="${properties.kcInputWrapperClass!}">
                <h1>mapeo 6</h1>
                <input id="otp" name="otp" autocomplete="off" type="text" class="${properties.kcInputClass!}"
                       autofocus aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"/>

                <#if messagesPerField.existsError('totp')>
                    <h1>mapeo 7</h1>
                    <span id="input-error-otp-code" class="${properties.kcInputErrorMessageClass!}"
                          aria-live="polite">
                        ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                    </span>
                </#if>
            </div>
        </div>

            <div class="${properties.kcFormGroupClass!}">
            <h1>mapeo 8</h1>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                <h1>mapeo 9</h1>
                    <input
                        class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                        name="login" id="kc-login" type="submit" value="${msg("doLogIn")}" />
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>