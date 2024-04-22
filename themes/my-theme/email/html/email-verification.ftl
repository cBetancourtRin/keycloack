<#import "template.ftl" as layout>
    <@layout.emailLayout>

        <body style="font-family: 'Poppins', sans-serif">
            <section
            id="container-email"
            style="
                border: 1px solid #bcbcbc;
                border-radius: 0.5rem;
                width: 90%;
                margin: 1rem auto;
                max-width: 40rem;
                min-width: 35rem;
            "
            >
            <div
                id="header-email"
                style="
                background-color: #065ad8;
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
                "
            >
                <h2
                style="font-size: 24px; margin: 0; white-space: nowrap; color: white"
                >
                ${msg("verifyEmailHead")}
                </h2>

                <img
                src="${url.resourcesPath}/img/score_logo_blank.png"
                alt="Logo score"
                />
            </div>

            <div
                id="info-recover"
                style="margin-left: 2.5rem; margin-top: 2rem; margin-right: 3rem"
            >
                <h2
                style="
                    font-weight: 400;
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
                    color: #065ad8;
                    margin-bottom: 1rem;
                    font-size: 24px;
                "
                >
                ${user.email}
                </h2>

                <p
                style="
                    width: 100%;
                    font-size: 14px;
                    color: #828282;
                    margin-bottom: 2rem;
                "
                >
                    ${msg("verifyEmailAlert")}

                </p>    


                <a href="${link}">
                    <button
                        id="button-restablish"
                        style="
                        background-color: #065ad8;
                        color: white;
                        font-weight: 600;
                        border-radius: 2rem;
                        width: 15rem;
                        font-size: 18px;
                        padding: 0.5rem;
                        margin-bottom: 1rem;
                        border: none;
                        cursor: pointer;
                        "
                    >
                        ${msg("verifyEmailBtn")}
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
                    font-size: 14px;
                    text-align: justify;
                "
                >
                ${msg("verifyEmailWarn")}

                <span style="color: #6d6d6d; font-weight: 600; text-decoration: none">
                    ${msg("supportPage")}
                </span>
                </p>
            </div>
            </section>
            <p style="text-align: center; color: #b2b2b2; font-size: 16px">
            ${msg("copyrightText")}
            </p>
        </body>

</@layout.emailLayout>

<#--  ${kcSanitize(msg("emailVerificationBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}  -->


