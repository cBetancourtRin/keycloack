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

    

    <#elseif section = "form">

        <#if realm.password>   
    <div class="container-fluid">
        <div class="row">
            <div class=" col-md-7 col-lg-7 col-xl-5 ps-0 carousel-container">
                <div id="carouselProdcuts" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators d-flex gap-4">
                        <button type="button" data-bs-target="#carouselProdcuts" data-bs-slide-to="0" class="btnCarousel active"
                        aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselProdcuts" data-bs-slide-to="1" aria-label="Slide 2"
                        class="btnCarousel"></button>
                        <button type="button" data-bs-target="#carouselProdcuts" data-bs-slide-to="2" aria-label="Slide 3"
                        aria-current="true" class="btnCarousel"></button>
                        <button type="button" data-bs-target="#carouselProdcuts" data-bs-slide-to="3" aria-label="Slide 4"
                        aria-current="true" class="btnCarousel"></button>
                        <button type="button" data-bs-target="#carouselProdcuts" data-bs-slide-to="4" aria-label="Slide 5"
                        aria-current="true" class="btnCarousel"></button>
                        <button type="button" data-bs-target="#carouselProdcuts" data-bs-slide-to="5" aria-label="Slide 6"
                        aria-current="true" class="btnCarousel"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100 h-100" src="${url.resourcesPath}/img/slider-1-score.png">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 h-100" src="${url.resourcesPath}/img/slider-2-iot.png">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 h-100" src="${url.resourcesPath}/img/slider-3-line.png">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 h-100" src="${url.resourcesPath}/img/slider-4-cloud.png">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 h-100" src="${url.resourcesPath}/img/slider-5-farm.png">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 h-100" src="${url.resourcesPath}/img/slider-6-retail.png">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-7 col-md-7 col-lg-4 col-xl-6 container-right m-auto">
                <div class="container-right-content">
                    <div class="d-flex align-items-center justify-content-center logo-text h-auto ">
                        <img class="img-logo" src="${url.resourcesPath}/img/score_logo2.png" alt="">
                        <span class="line"></span>
                        <div class="d-flex flex-column align-items-center">
                        <h6 class="text-logo mb-0">
                            <span>${msg("descScore1")}</span>
                            <span>${msg("descScore2")}</span>
                            <span>${msg("descScore3")}</span>
                        </h6>
                        </div>
                    </div>
                    <div class="form-container">
                        <div class="header-form">
                        <p class="header-form-title fs-4 fw-semibold mb-2">${msg("titleForm")}</p>
                        <p class="header-form-body">${msg("descForm")}</p>
                        </div>
                        <form action="${url.loginAction}" method="post">
                        <div class="input-group">
                            <span class="input-group-text bg-transparent" id="basic-addon1"><img height="15px"
                                src="${url.resourcesPath}/img/email-icon.svg" alt=""></span>
                            <input type="text" class="form-control input-form border border-start-0"
                            placeholder="${msg("placeholderEmail")}" 
                            name="username"
                            id="user-email" aria-describedby="emailHelp" 
                            required>
                        </div>
                        <div class="input-group">
                            <span class="input-group-text bg-transparent"><img height="20px"
                                src="${url.resourcesPath}/img/password-icon.svg" alt=""></span>
                            <input type="password" name="password" id="password" class="form-control input-form border border-start-0 border-end-0 "
                            placeholder="${msg("placeholerPassword")}" aria-label="Password" required>
                            <button type="button" onclick="togglePassword()" class="input-group-text bg-transparent"><img id="vi" height="17px" src="${url.resourcesPath}/img/eye-off.png"
                                ></button>
                        </div>
                        <#if realm.resetPasswordAllowed>
                            <p class="text-end link-form">
                            <a href="${url.loginResetCredentialsUrl}">${msg("fogotPassword")}</a>
                            </p>
                        </#if>

                        <button class="btn btn-primary w-100 rounded-pill btn-form fw-semibold">Ingresar</button>
                        </form>
                    </div>
            </div>
        </div>
    </div>


                <#-- if we use qr authentication  -->
                <#--  <button type="button" class="btn btn-outline-warning btn-qr" disabled>
                    <img class="qr-image" src="${url.resourcesPath}/img/qr-logo.png" alt="Qr image" /> 
                    ${msg("loginQr")} 
                </button>  -->

                

                <#--  <form id="kc-form-login" class="form ${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                
                    <div class="mb-3">
                        <label for="username" class="form-label">
                            <#if !realm.loginWithEmailAllowed>
                                ${msg("labelUsername")} 
                            <#elseif !realm.registrationEmailAsUsername>
                                ${msg("labelUsernameOrEmail")}
                            <#else>
                                ${msg("labelEmail")}                                      
                            </#if>
                        </label>  -->
                        <#--  type="email"  -->
                        <#--  <input name="username"  class="form-control" id="user-email" aria-describedby="emailHelp"  placeholder="${msg('placeholderEmail')}" required <#if usernameEditDisabled??>disabled</#if>                        
                    </div>  -->
                
                    <#--  Input email  -->
                    
                        <#--  if we use the recover password  -->
                        <#--  <#if realm.resetPasswordAllowed>
                            <a href="${url.loginResetCredentialsUrl}">
                                <button type="button" class="btn btn-link btn-fgt">${msg("fogotPassword")}</button>
                            </a>
                        </#if>  -->

                    <#--  Boton Login  -->
            

                    <#--  Cuando este habilitado el recuerdame  -->
                    <#--  <#if realm.rememberMe && !usernameEditDisabled??>
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
                    </#if>  -->
                    
                    <#--  Cuando este habilitado la opción de registro de usuarios  -->
                    <#--  <#if (realm.password && realm.registrationAllowed && !usernameEditDisabled??) || realm.resetPasswordAllowed>
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
        </div>             -->
        <script>
            function togglePassword() {
            
            let x = document.getElementById("password");
            let v = document.getElementById("vi");
            if (x.type === "password") {
                x.type = "text";
                v.src = "${url.resourcesPath}/img/eye.png";
            } else {
                x.type = "password";
                v.src = "${url.resourcesPath}/img/eye-off.png";
                }
            }
        </script> 
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
