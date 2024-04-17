<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")?no_esc}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")?no_esc}
    <#elseif section = "form">


    

      <div class="box-container-forgot">
          <picture id="logo-forgot">
            <img
              id="logo-forgot-img"
              src="${url.resourcesPath}/img/score_logo.png"
              alt="logo forgot password"
            />
          </picture>
        <h2>${msg("changePassword")}</h2>
        <p class="box-container-forgot-desc">Elije una nueva contraseña, recuerda utilizar al menos 8 caracteres, incluyendo letras mayúsculas,
          minúsculas, números y símbolos especiales.</p>

        <form id="form-forgot" action="${url.loginAction}" method="post">
        
          <div class="form-floating mb-3">
            <input
              name="password-new"
              autocomplete="off"
              type="password"
              class="form-control"
              id="floatingInput"
              placeholder="name@example.com"
              pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\w\s]).{8,}$"
              required
              title="Debe tener al menos 8 caracteres, incluyendo al menos una letra mayúscula, una minúscula, un número y un símbolo especial."
            />
            <label for="floatingInput">${msg("setNewPassword")}</label>
          </div>

          <!-- input 2 -->
          <div class="form-floating mb-3">
            <input
              name="password-confirm"
              type="password"
              class="form-control"
              id="floatingInput"
              placeholder="name@example.com"
              pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\w\s]).{8,}$"
              autocomplete="off"
              required
            />
            <label for="floatingInput">${msg("confirmPassword")}</label>
          </div>

          <button id="update-psw-btn" type="submit" class="btn btn-primary" type="submit">
            ${msg("buttonSend")}
          </button>
        </form>
        <p class="fw-lighter">${msg("copyrightText")}</p>
      </div>

    </#if>
</@layout.registrationLayout>