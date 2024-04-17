<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

<head>
    <#--  <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width,initial-scale=1">  -->

    <meta charset="utf-8" http-equiv="Content-Type" name="viewport" content="width=device-width, initial-scale=1" name="robots" content="noindex, nofollow">

    <title>
        <#nested "title">
    </title>
    <#--  Favicon link  -->
    <link rel="shortcut icon" href="${url.resourcesPath}/img/favicon.ico" />

    <#--  Bootstrap link  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <#if properties.meta?has_content>
        <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
        </#list>
    </#if>

    <#--  Catch every style document on the project on the CSS file -->
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>

    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>

    <#if scripts??>
        <#list scripts as script>
            <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
</head>


<body id="prueba" class="${properties.kcBodyClass!} template">
    
    <#--  <div id="kc-logo">
        <a href="${properties.kcLogoLink!'#'}">
            <div id="kc-logo-wrapper"></div>
        </a>    
    </div>  -->

    <div id="kc-container" class="${properties.kcContainerClass!}">
        <div id="kc-container-wrapper" class="${properties.kcContainerWrapperClass!}">

            <#--  <div id="kc-header" class="${properties.kcHeaderClass!}">
                <div id="kc-header-wrapper" class="${properties.kcHeaderWrapperClass!}">
                    <#nested "header">
                </div>
            </div>  -->

            
                <div id="kc-content-wrapper" class="${properties.kcContentWrapperClass!}">
                    
                
                    
                    <#--  alert messages  -->
                    <#if displayMessage && message?has_content>                     

                            <#--  <div class="alert alert-${message.type}">  -->                             
                                
                        <#if message.type = 'success'>
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <span>${message.summary}</span>                                            
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>                                            
                        </div> 
                        </#if>                                 
                        <#if message.type = 'warning'>
                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                <span>${message.summary}</span>                                            
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>                                            
                            </div> 
                        </#if>
                        <#if message.type = 'error'>
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <span>${message.summary}</span>                                            
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>                                            
                            </div>
                        </#if>
                        <#if message.type = 'info'>
                            <div class="alert alert-info alert-dismissible fade show" role="alert">
                                <span>${message.summary}</span>                                            
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>                                            
                            </div>
                        </#if> 
                    </#if>
                    
                    <#-- Here is the form from every template, has a conditional rendering depending on the redirection can be the login form, the resset passwword form etc. -->
                    <#nested "form">

                    <#if displayInfo>
                        <div id="kc-info" class="${properties.kcInfoAreaClass!}">
                            <div id="kc-info-wrapper" class="${properties.kcInfoAreaWrapperClass!}">
                                <#nested "info">
                            </div>
                        </div>
                    </#if>
                </div>
            

            <#if realm.internationalizationEnabled>
                <div id="kc-locale" class="${properties.kcLocaleClass!}">
                    <div id="kc-locale-wrapper" class="${properties.kcLocaleWrapperClass!}">
                        <div class="kc-dropdown language-picker" id="kc-locale-dropdown">
                            <i class="language-icon material-icons mdc-text-field__icon" tabindex="-1" role="button">language</i>
                            <div class="mdc-select">
                                <select id="language-picker-dropdown" class="mdc-select__native-control">
                                    <option value="" disabled></option>

                                    <#list locale.supported as l>
                                        <#if l.label = locale.current>
                                            <option value="" selected>${l.label}</option>
                                        <#else>
                                            <option value="${l.url}">${l.label}</option>
                                        </#if>
                                        
                                    </#list>
                                </select>
                                <#--  <label class="mdc-floating-label mdc-floating-label--float-above">Language!</label>  -->
                                <div class="mdc-line-ripple"></div>
                            </div>

                            <#--  <div class="form-inline">
                                <div class="form-group">
                                    <label for="language-picker-dropdown" class="language-picker-dropdown-label">
                                        <i class="fa fa-2x fa-globe"></i>
                                    </label>
                                    <select id="language-picker-dropdown" class="form-control" onchange="languageSelected()">
                                        <#list locale.supported as l>
                                            <#if l.label = locale.current>
                                                <option value="" selected>${l.label}</option>
                                            <#else>
                                                <option value="${l.url}">${l.label}</option>
                                            </#if>
                                            
                                        </#list>
                                    </select>

                                    
                                </div>
                            </div>  -->

                        </div>
                    </div>
                </div>
            </#if>

        </div>
    </div>

    <!--  bootstrap scripts for style use  -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
</#macro>
