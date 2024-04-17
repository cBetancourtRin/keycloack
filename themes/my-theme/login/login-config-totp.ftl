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
      <p>${msg("copyrightText")}</p>
    </section> 
    
    </#if>
</@layout.registrationLayout> 




























        <#--  <img src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode">
        <span class="code">${totp.totpSecretEncoded}</span>



            <#if mode?? && mode = "manual">
            <h1>Ingreso al condicional</h1>
                <li>
                    <p>${msg("loginTotpManualStep2")}</p>
                    <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
                    <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("loginTotpScanBarcode")}</a></p>
                </li>
                <li>
                    <p>${msg("loginTotpManualStep3")}</p>
                    <p>
                    <ul>
                        <li id="kc-totp-type">${msg("loginTotpType")}: ${msg("loginTotp." + totp.policy.type)}</li>
                        <li id="kc-totp-algorithm">${msg("loginTotpAlgorithm")}: ${totp.policy.getAlgorithmKey()}</li>
                        <li id="kc-totp-digits">${msg("loginTotpDigits")}: ${totp.policy.digits}</li>
                        <#if totp.policy.type = "totp">
                            <li id="kc-totp-period">${msg("loginTotpInterval")}: ${totp.policy.period}</li>
                        <#elseif totp.policy.type = "hotp">
                            <li id="kc-totp-counter">${msg("loginTotpCounter")}: ${totp.policy.initialCounter}</li>
                        </#if>
                    </ul>
                    </p>
                </li>
            <#else>
            <h1>Ingreso al else</h1>
                <li>
                    <p>${msg("loginTotpStep2")}</p>
                    <img id="kc-totp-secret-qr-code" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"><br/>
                    <p><a href="${totp.manualUrl}" id="mode-manual">${msg("loginTotpUnableToScan")}</a></p>
                </li>
            </#if>

            


            <h1>En la lista</h1>
            <li>

                <p>${msg("loginTotpStep3")}</p>
                <p>${msg("loginTotpStep3DeviceName")}</p>
            </li>  -->



        <#--  <form action="${url.loginAction}" class="${properties.kcFormClass!}" id="kc-totp-settings-form" method="post">

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelClass!}">
                    <label class="pf-v5-c-form__label" for="form-vertical-name">
                        <span class="pf-v5-c-form__label-text"> el codigo one time ${msg("authenticatorCode")}</span>&nbsp;<span class="pf-v5-c-form__label-required" aria-hidden="true">&#42;</span>
                    </label>
                </div>
                <div class="${properties.kcInputClass!} <#if messagesPerField.existsError('totp')>pf-m-error</#if>">
                    <input type="text" required id="totp" name="totp" autocomplete="off"
                           aria-invalid="<#if messagesPerField.existsError('totp')>true</#if>"
                    />

                    <#if messagesPerField.existsError('totp')>
                        <span class="pf-v5-c-form-control__utilities">
                            <span class="pf-v5-c-form-control__icon pf-m-status">
                                <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
                            </span>
                        </span>
                    </#if>
                </div>
                <#if messagesPerField.existsError('totp')>
                    <span id="input-error-otp-code" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('totp'))?no_esc}
                    </span>
                </#if>
                <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
                <#if mode??><input type="hidden" id="mode" name="mode" value="${mode}"/></#if>
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelClass!}">
                    <label class="pf-v5-c-form__label" for="form-vertical-name">
                        <span class="pf-v5-c-form__label-text"> label 2 del device name${msg("loginTotpDeviceName")}</span><#if totp.otpCredentials?size gte 1>&nbsp;<span class="pf-v5-c-form__label-required" aria-hidden="true">&#42;</span></#if>
                    </label>
                </div>

                <div class="${properties.kcInputClass!}">
                    <input type="text" id="userLabel" name="userLabel" autocomplete="off"
                           aria-invalid="<#if messagesPerField.existsError('userLabel')>true</#if>"
                    />

                    <#if messagesPerField.existsError('userLabel')>
                        <span class="pf-v5-c-form-control__utilities">
                            <span class="pf-v5-c-form-control__icon pf-m-status">
                                <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
                            </span>
                        </span>
                    </#if>
                </div>
                <#if messagesPerField.existsError('userLabel')>
                    <span id="input-error-otp-label" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                        ${kcSanitize(messagesPerField.get('userLabel'))?no_esc}
                    </span>
                </#if>
            </div>

            <div class="pf-v5-c-form__group pf-m-action">
                <div class="pf-v5-c-form__actions">
                    <#if isAppInitiatedAction??>
                        <input type="submit"
                            class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"
                            id="saveTOTPBtn" value="${msg("doSubmit")}"
                        />
                        <button type="submit"
                                class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!} ${properties.kcButtonLargeClass!}"
                                id="cancelTOTPBtn" name="cancel-aia" value="true" />El boton 1${msg("doCancel")}
                        </button>
                    <#else>

                    <h1>El boton else</h1>
                        <input type="submit"
                            class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                            id="saveTOTPBtn" value="${msg("doSubmit")}"
                        />
                    </#if>
                </div>
            </div>
        </form>  -->
