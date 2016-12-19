<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
<head>
	<title>${the_title} - ${company_name}</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"] page=top_head_include />
</head>
<body class="${css_class}">
<@liferay_ui["quick-access"] contentId="#main-content" />
<@liferay_util["include"] page=body_top_include />
<@liferay.control_menu />
<body class="homepage">
<div id="wrapper" class="container-fluid">
    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-4">
                        <div id="lang-selector-bar">
                        <@liferay_portlet["runtime"]
                                    defaultPreferences=default_preferences
                                    portletProviderAction=portletProviderAction.VIEW
                                    portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
                        />
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-8">
                        
                            <#if is_setup_complete>
					
                         
					
						<@liferay.user_personal_bar />
			
				</#if></div>
                    <div class="col-sm-4 col-xs-12">
                       <div class="social">
                           
                            <div class="search">
                              <@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
		            </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                      <img alt="${logo_description}" height="64" src="${site_logo}" />
                  </a>
                    <#if show_site_name>
                    <span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">${site_name}</span>
                </#if>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <#if has_navigation && is_setup_complete>
    <@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
		
	</#if>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

         
        <section id="breadcrumb">
            <div class="container">
            
            <@liferay_portlet["runtime"]
		defaultPreferences=default_preferences
		portletProviderAction=portletProviderAction.VIEW
                portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.BreadcrumbEntry"
/></div>
        </section>
	<section class="container-fluid-1280" id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

    
<footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; <a target="_blank" href="http://www.ump.ma/" title="Université Mohammed Ier Oujda">Université Mohammed I<sup>er</sup> Oujda</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />
</div>
</body>

</html>
