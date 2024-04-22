<#import "template.ftl" as layout>
  <@layout.registrationLayout displayInfo=true; section>
    <#if section="title">
      ${msg("headerEmailVerifyTab")}
      <#elseif section="header">
        <#elseif section="form">
          <section id="verifyEmail" class="container-fluid">
            <img id="score-logo" src="${url.resourcesPath}/img/score_logo.png" alt="Logo score" />
            <article class="container-info">
              <h1>
                ${msg("emailVerifyTitle")}
              </h1>
              <p class="descr">
                ${msg("emailVerifyInstruction1")}
                <span class="fw-bold">
                  ${msg(user.email)}
                </span>
              </p>
              <p>
                ${msg("emailVerifyInstruction2")}
                <br />
                ${msg("emailVerifyInstruction3")}
                <a href="${url.loginAction}">
                  ${msg("doClickHere")}
                </a>
              </p>
              <p id="copy-text">
                ${msg("copyrightText")}
              </p>
            </article>
          </section>
    </#if>
  </@layout.registrationLayout>