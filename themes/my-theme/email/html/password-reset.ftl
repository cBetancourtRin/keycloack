<#import "template.ftl" as layout>
<@layout.emailLayout>

  <head>
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
  </head>

  <body style="font-family: 'Poppins', sans-serif; ">
    <section
      id="container-email"
      style="
        border: 1px solid #bcbcbc;
        border-radius: 0.5rem;
        width: 90%;
        margin: 1rem auto;
        max-width: 40rem;
        min-width: 35rem;
      ">
      <div
        id="header-email"
        style="
              background-color: #065AD8;
              display: flex;
              margin-left: -0.3rem;
              margin-right: -0.3rem;
              margin-top: -0.1rem;
              justify-content: space-between;
              border-top-right-radius: 0.5rem;
              border-top-left-radius: 0.5rem;
              border-bottom-right-radius: 4rem;
              align-items: center;
              padding: 1.2rem 2.2rem;
              color: white;
              font-family: 'Poppins', sans-serif;            
            ">
        <h2
          style="
                font-family: 'Poppins', sans-serif;
                font-size: 24px;
                margin: 0;
                white-space: nowrap;
                color: white;
              "
        >
          ${msg("recoveryPassHead")}
        </h2>

        <#--  <img
          src="${url.resourcesPath}/img/score_logo_blank.png"
          alt="Logo score"
        />  -->
      </div>

      <div
        id="info-recover"
        style="margin-left: 2.5rem; margin-top: 2rem; margin-right: 3rem"
      >

        <h2
          style="
                font-family: 'Poppins', sans-serif;
                color: black;
                font-size: 20px;
                margin-bottom: 1rem;
              "
        >
          ${msg("greetRecover")}
        </h2>
        <h2
          id="name-user"
          style="
                color: #065AD8;
                font-family: 'Poppins', sans-serif;
                margin-bottom: 1rem;
                font-size: 24px;
              "
        >
          ${user.firstName} ${user.lastName}
        </h2>
        <p
          style="
                font-family: 'Poppins', sans-serif;
                width: 100%;
                font-size: 14px;
                color: #000000;
                margin-bottom: 2rem;
              "
        >
          ${msg("descRecover")}
        </p>

        
        <a href="${link}">
          <button
            id="button-restablish"
            style="
                background-color: #065AD8;
                color: white;
                font-weight: 600;
                border-radius: 2rem;
                width: 19rem;
                font-size: 18px;
                padding: 0.5rem;
                margin-bottom: 1rem;
                border: none;
                cursor: pointer;
                font-family: 'Poppins', sans-serif;
              "
          >
            ${msg("restartPass")}
          </button>
        </a>
        <p
          style="
            width: 100%;
            font-size: 14px;
            color: #828282;
            margin-bottom: 2rem;
          "
        >
        ${msg("timeLink")}
          
        </p>
        <p
          style="
            text-align: center;
            color: #606060;
            font-family: 'Poppins', sans-serif;
            font-size: 14px;
          "
        >
          ${msg("alertRecovery")} 
          <span style="
                  color: #6D6D6D;
                  ">
            ${msg("supportPage")}
          </span>
        </p>
      </div>
    </section>
    <p
      style="
        text-align: center;
        color: #B2B2B2;
        font-family: 'Poppins', sans-serif;
        font-size: 14px;
      "
    >
      ${msg("copyrightText")}
    </p>



  </body>

  
</@layout.emailLayout>



<#-- Variables para extraer -->
<#--  ${msg("passwordResetBody",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration), user.username, user.email, user.firstName, user.lastName)}  -->