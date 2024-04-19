<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>

    <#if section = "title">
        ${msg("totpHeaderTab")}    
    <#elseif section = "form">

        <section id="otp-config">
            <img id="score-logo" src="${url.resourcesPath}/img/score_logo.png" alt="Logo score" />
        
            <h1>${msg("totpHeaderMessage")}</h1>

        <p>
            ${msg("totpDescription")}
        </p>
        
            <article id="otp-description">

                <div id="step-one">
                    <picture>
                        <img src="${url.resourcesPath}/img/scan-qr.png" alt="Image scan"/>
                    </picture>
                    <p>
                        ${msg("totpStepOne")}
                    </p>

                    <div id="box-apps">
                        <a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=es&gl=US" target="_blank">                    
                            <div id="goo-auth-container">
                                <p>${msg("totpDownloadApp")}</p>
                                <img src="${url.resourcesPath}/img/g-auth.png" alt="Google auth logo">
                            </div>                       
                            <div id="app-stores">
                                <img src="${url.resourcesPath}/img/apl-store.svg" alt="Apple store logo">
                                <hr class="divider"/>
                                <img src="${url.resourcesPath}/img/play-store.svg" alt="Play store logo">
                            </div>
                        </a>
                    </div>
                </div>               
        
                <div id="step-two">
                    <img src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode">
                    <div id="step-two-qr">
                        <p>
                            ${msg("totpStepTwo")}
                        </p>
                        <span id="code-qr">${totp.totpSecretEncoded}</span>
                    </div>
                </div>

                <div id="step-three">
                    <p>
                        ${msg("totpStepThree")}
                    </p>
                    <form id="form-send-qr-code" action="${url.loginAction}" method="post" >
                        <div class="mb-3">
                            <input
                                type="number"
                                class="form-control"
                                id="exampleInputEmail1"
                                aria-describedby="emailHelp"
                                placeholder="Ejemplo 123456 (sin espacios ni símbolos adicionales)"                
                                required 
                                name="totp" 
                                autocomplete="off"
                            />
                            <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
                            <div id="code-help" class="form-text">
                                ${msg("totpEnterCode")}
                            </div>
                        </div>
                        <div class="mb-3">
                            <input                  
                                class="form-control"
                                id="exampleInputEmail1"
                                aria-describedby="emailHelp"
                                placeholder="Ejemplo: mi celular"
                                type="text"  
                                name="userLabel" 
                                autocomplete="off"
                            />
                            <div id="code-help" class="form-text">
                                ${msg("totpAssignName")}
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" id="send-code-qr">${msg("buttonSend")}</button>
                    </form>
                </div>
            </article>
            
            <p id="copy-text">${msg("copyrightText")}</p>
        </section> 
    </#if>
</@layout.registrationLayout> 