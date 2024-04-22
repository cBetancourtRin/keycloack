<#import "template.ftl" as layout>
  <@layout.emailLayout>
    <body> 
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
                "
          >
            <h2
              style="
                    font-family: 'Poppins', sans-serif;
                    font-size: 24px;
                    margin: 0;
                    white-space: nowrap;
                    color: white;
                  "
            >
              ${msg("loginErrHead")}
            </h2>

          </div>

          <div
            id="info-recover"
            style="margin-left: 2.5rem; margin-top: 2rem; margin-right: 3rem"
          >
            <h2
              style="
                    font-family: 'Poppins', sans-serif;
                    color: black;
                    font-weight: 400;
                    font-size: 14px;
                    margin-bottom: 1rem;
                  "
            >
              ${msg("loginErrAlert")}
            </h2>

            <div style="width: 20rem; font-family: 'Poppins', sans-serif; border:2px solid rgb(196, 196, 196);border-radius: 1rem; padding: 1rem;">      

              <div style="display: flex; align-items: center; width: 18rem;">
                  <span style="font-weight: 600; color:#828282; margin-right: 1rem;">${msg("loginErrLabelDate")}</span>
                  <p style="font-weight: 300; margin: 0; color:#b7b7b7 ;">${kcSanitize(event.date)}</p>
              </div>
              <div style="display: flex; align-items: center; width: 20rem;">
                  <span style="font-weight: 600; color:#828282; margin-right: 1rem;">${msg("loginErrLabelIp")}</span>
                  <p style="font-weight: 300; margin: 0; color:#b7b7b7 ;"> ${kcSanitize(event.ipAddress)} </p>
              </div>
            </div>
            
            <p
              style="
                    font-family: 'Poppins', sans-serif;
                    text-align: center;
                    width: 100%;
                    font-size: 14px;
                    color: #646464;
                    margin-top: 2rem;
                    margin-bottom: 2rem;
                  "
            >
              ${msg("loginErrDesc")}
              
            </p>
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