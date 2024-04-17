<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <section
      id="container-email"
      style="
        border: 2px solid #ccc;
        border-radius: 0.5rem;
        width: 80%;
        margin: 2rem auto;
      "
    >
      <div
        id="header-email"
        style="
          background-color: #2da4dc;
          display: flex;
          border-top-right-radius: 0.5rem;
          border-top-left-radius: 0.5rem;
          align-items: center;
          padding: 1rem 2rem;
          border-bottom-right-radius: 3rem;
          color: white;
          font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
            sans-serif;
        "
      >
        <p
          style="
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
              sans-serif;
          "
        >
          Recuperar contraseña
        </p>

        <img
          style="
            width: 10rem;
            margin-left: 50%;
          "
          src="./assets/score_logo.png"
          alt="Logo score"
        />
      </div>

      <div
        id="info-recover"
        style="margin-left: 4rem; margin-top: 4rem; margin-right: 4rem"
      >
        <h2
          style="
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
              sans-serif;
          "
        >
          Hola,
        </h2>
        <h2
          id="name-user"
          style="
            color: #2da4dc;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
              sans-serif;
          "
        >
          ${user.firstName } ${user.lastName}
        </h2>
        <p
          style="
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
              sans-serif;
            width: 60%;
          "
        >
          Recibimos tu solicitud para restablecer contraseña en score, si
          solicitaste el restablecimiento, lo puedes realizar en el siguiente
          enlace:
        </p>

        
        <a href="${link}">
          <button
          id="button-restablish"
          style="
            background-color: #2da4dc;
            color: white;
            font-weight: bold;
            border-radius: 1rem;
            margin-top: 1rem;
            margin-bottom: 4rem;
            width: 18rem;
            font-size: 1.2rem;
            padding: 0.5rem;
            border: none;
            cursor: pointer;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
              sans-serif;
          "
        >
          Reestablecer contraseña
        </button>



        </a>
        <p
          style="
            text-align: center;
            color: grey;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
              sans-serif;
          "
        >
          Si no solicitaste este restablecimiento o ves actividad sospechosa,
          comunícate de manera inmediata a nuestro canal de soporte
          soporte.innerconsulting.com
        </p>
      </div>
    </section>
    <p
      style="
        text-align: center;
        color: grey;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
          sans-serif;
      "
    >
      © 2024 SCORE. Todos los derechos reservados.
    </p>

    <h1>${msg("passwordResetBody",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration), user.username, user.email, user.firstName, user.lastName)}</h1>
  </body>
</html>


<#--   <h1>Reestablecer SCORE</h1>

        ${msg("passwordResetBody",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration), user.username, user.email, user.firstName, user.lastName)}  -->