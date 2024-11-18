<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="avt" TagName="SearchBoost" Src="~/DesktopModules/DnnSharp/SearchBoost/SearchInput.ascx"%>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<!-- Google Tag Manager (noscript) -->
<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P4R52SVS" height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
<!-- End Google Tag Manager (noscript) -->
	

<!-- FONT
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gantari:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
	
<script src="//kit.fontawesome.com/1a3ca6a659.js" crossorigin="anonymous"></script>
	
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<dnn:DnnJsInclude runat="server" FilePath="js/jquery.slicknav.js" PathNameAlias="SkinPath" />

<!-- CSS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
	
<script>
	var version_date=new Date();
	document.write('<link href="<%= SkinPath %>css/styles.css?v='+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 1000) +'" type="text/css" rel="stylesheet"/>');
</script>
	

<!--- Rotator Stuff
Info on how to use http://kenwheeler.github.io/slick/
-----------------------------------------------------------   --->
<dnn:DnnJsInclude runat="server" FilePath="js/slick.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick-theme.css" PathNameAlias="SkinPath" />

<!--- FancyBox Stuff
Info on how to use http://fancyapps.com/fancybox/3/
----------------------------------------- --->
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.css" />

<!--- Animation on Scroll
----------------------------------------------------
https://michalsnik.github.io/aos/ -->
<link href="//unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="//unpkg.com/aos@2.3.0/dist/aos.js"></script>

	
<!--- GDPR Popup
-------------------------------------------------- -->
<dnn:DnnJsInclude runat="server" FilePath="js/cookie-popup.js" PathNameAlias="SkinPath" />		

	
<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" href="<%= SkinPath %>images/favicon.png">

<a href="#skip_to_content" class="skip-to-content-link">Skip to Content</a>
<header role="banner">	
    <div id="header">
		<div class="row no-margin top-links">
			<div class="header-links">
				<a href="/Membership/Join-WERC" title="Join WERC">Join WERC</a>
				<a href="/Membership/Directory" title="Directory">Directory</a>
				<a href="https://www.gws2024.org/" target="_blank" title="GWS">GWS</a>
				<a href="https://20762520.hs-sites.com/knowledge?__hstc=116368473.561d1e78f8b84127194b4c562382946b.1680798958435.1718214954676.1718384567154.245&__hssc=116368473.17.1718384567154&__hsfp=3523199817" target="_blank" title="Help Center">Help Center</a>
				<a href="/" title="Search" id="showsearch">Search</a>
				<% If Request.IsAuthenticated Then%>
					<a href="https://portal.talenteverywhere.org/my-profile" title="My Account">My Account</a>
           			<a href="/logoff" title="Logout" class="login">Logout</a>
        		<% Else%>
					<a href="/login.aspx?appctx=/NavToAuth.aspx<%=GetReturnUrl()%>" title="Login" class="login">Login</a>
        		<% End If%>
			</div>
		</div>
        <div class="row no-margin logo-nav-row">
            <div class="logo">
				<a href="/"><img src="<%= SkinPath %>images/WERC_Acronym_GreenBlue_RGB_Gradient.svg" alt="WERC" width="192" /></a>
			</div>
			<div class="nav-wrapper">
				<div class="search-panel">
					<div class="container search-container">
						<div class="row no-margin">
							<div class="col-md-12">
								<avt:SearchBoost runat = "server" id = "avtSearch" />
							</div>
						</div>
					</div>
				</div>
				<!--- Navigation Include--->
				<!--#include file="navigation.ascx"-->
			</div>
        </div>
    </div>
</header>	