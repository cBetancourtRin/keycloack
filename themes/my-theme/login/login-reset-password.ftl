<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("headerForgotTab")}
    
    <#elseif section = "form">        
        <div class="box-container-forgot">
        <picture id="logo-forgot">
            <img
                id="logo-forgot-img"
                src="${url.resourcesPath}/img/score_logo.png"
                alt="logo forgot password"
            />
        </picture>
        <h2>${msg("fogotPassword")}</h2>
        <p class="box-container-forgot-desc">
            ${msg("descForgot")}
        </p>
        <form id="form-forgot" action="${url.loginAction}" method="post">
            <div class="form-floating mb-3">
            <input
                name="username"
                type="email"
                class="form-control"
                id="floatingInput"
                placeholder="name@example.com"
                required
            />
            <label for="floatingInput">${msg("labelEmail")}</label>
            </div>

            <div id="buttons-form-forgot">
            <button type="submit" class="btn btn-primary" type="submit">
                ${msg("buttonSend")}
            </button>
            <button
                class="btn btn-secondary"
                onclick="window.location.href = '${url.loginUrl}'"
            >
                ${msg("buttonBack")}
            </button>
            </div>
        </form>
        <p class="fw-lighter">${msg("copyrightText")}</p>
        </div>
    </#if>
</@layout.registrationLayout>
