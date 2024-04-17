<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>

    <#if section = "title">
    <#--  titulo pestaña  -->
        ${msg("headerLoginTab")}
    
    <#elseif section = "header">
    <#--  Texto extraido de dashboard de administracion de la opcion general -> html display name  -->
	<#--  <div class="title">
      ${msg("loginTitleHtml",(realm.displayNameHtml!''))?no_esc}
    </div>  -->

    <script>
        function togglePassword() {
            var x = document.getElementById("password");
            var v = document.getElementById("vi");
            if (x.type === "password") {
                x.type = "text";
                v.src = "${url.resourcesPath}/img/eye.png";
            } else {
                x.type = "password";
                v.src = "${url.resourcesPath}/img/eye-off.png";
            }
        }
    </script>

    <#elseif section = "form">

        <#if realm.password>   

        <div class="container-login-page">
            <div class="score-info">
                <img class="score-intro-logo" src="${url.resourcesPath}/img/score_logo.png" alt="Score logo" /> 
                <h1>${msg("introScore")} <#--  <strong> ${msg("headerTab")}</strong>  --></h1>
                <p>${msg("descScore")}</p>            
            </div>

            <div class="box-container-form">
                <div>
                    <p class="main-title">${msg("welcomeForm")} 
                        <strong>${msg("headerLoginTab")}</strong>
                    </p>                    
                    <h2>${msg("loginHeader")}</h2>
                </div>

                <#-- if we use qr authentication  -->
                <#--  <button type="button" class="btn btn-outline-warning btn-qr" disabled>
                    <img class="qr-image" src="${url.resourcesPath}/img/qr-logo.png" alt="Qr image" /> 
                    ${msg("loginQr")} 
                </button>  -->

                <hr id="form-divider" /> 

                <form id="kc-form-login" class="form ${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                
                    <div class="mb-3">
                        <label for="username" class="form-label">
                            <#if !realm.loginWithEmailAllowed>
                                ${msg("labelUsername")} 
                            <#elseif !realm.registrationEmailAsUsername>
                                ${msg("labelUsernameOrEmail")}
                            <#else>
                                ${msg("labelEmail")}                                      
                            </#if>
                        </label>
                        <#--  type="email"  -->
                        <input name="username"  class="form-control" id="user-email" aria-describedby="emailHelp"  placeholder="${msg('placeholderEmail')}" required <#if usernameEditDisabled??>disabled</#if>>                        
                    </div>
                
                    <#--  Input email  -->
                    <div class="mb-3">  
                    <div class="mb-3">
                        <label for="password" class="form-label">${msg("labelPassword")}</label>
                        <div id="password-input">
                            <input name="password" id="password" type="password" class="form-control" placeholder="${msg("placeholerPassword")}" required>                        
                            <label class="visibility" id="v" onclick="togglePassword()"><img id="vi" src="${url.resourcesPath}/img/eye-off.png"></label>
                        </div>
                        <#--  if we use the recover password  -->
                        <#if realm.resetPasswordAllowed>
                            <a href="${url.loginResetCredentialsUrl}">
                                <button type="button" class="btn btn-link btn-fgt">${msg("fogotPassword")}</button>
                            </a>
                        </#if>
                    </div>

                    <#--  Boton Login  -->
                    <div id="box-login-fgt">
                        <button type="submit" class="btn btn-primary"> ${msg("buttonLogin")} </button>
                    </div>

                    <#--  Cuando este habilitado el recuerdame  -->
                    <#if realm.rememberMe && !usernameEditDisabled??>
                        <div class="mdc-form-field remember-me-checkbox">
                            <div class="mdc-checkbox">
                                <input type="checkbox"
                                    name="rememberMe"
                                    class="mdc-checkbox__native-control"
                                    id="rememberMe"
                                    <#if login.rememberMe??>checked</#if>/>

                                <div class="mdc-checkbox__background">
                                    <svg class="mdc-checkbox__checkmark"viewBox="0 0 24 24">
                                        <path class="mdc-checkbox__checkmark-path" fill="none" stroke="white" d="M1.73,12.91 8.1,19.28 22.79,4.59"/>
                                    </svg>
                                    <div class="mdc-checkbox__mixedmark"></div>
                                </div>
                            </div>
                            <label for="rememberMe">${msg("rememberMe")}</label>
                        </div>
                    </#if>
                    
                    <#--  Cuando este habilitado la opción de registro de usuarios  -->
                    <#if (realm.password && realm.registrationAllowed && !usernameEditDisabled??) || realm.resetPasswordAllowed>
                        <div>
                            <div class="col-xs-12">
                                <hr class="separator" />
                            </div>
                        </div>
                        <div>
                            <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                                <div id="kc-registration" class="col-xs-12" <#if realm.password && realm.registrationAllowed && !usernameEditDisabled?? && realm.resetPasswordAllowed>style="margin-bottom: 15px;"</#if>>
                                    <span>${msg("noAccount")} <a href="${url.registrationUrl}">${msg("doRegister")}</a></span>
                                </div>
                            </#if>
                        </div>
                    </#if>
                </form>
            </div>
            <span class="copyright"> ${msg("copyrightText")}</span>      
        </div>            
        </#if>

    <#--  Si tenemos habilitadas redes sociales  -->
    <#elseif section = "info" >
        <#if realm.password && social.providers??>
            <div id="kc-social-providers">
                <ul>
                    <#list social.providers as p>
                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.displayName}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
