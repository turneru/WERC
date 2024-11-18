<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="page-title">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="breadcrumbs">
					<% If PortalSettings.ActiveTab.Level = 1 Then%>
					<div class="level1">
						<dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;span class=&quot;sep&quot;&gt; &lt;i class=&quot;fa-solid fa-arrow-right-long&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; &lt;/span&gt;" HideWithNoBreadCrumb="true" />
					</div>
					<% Else If PortalSettings.ActiveTab.Level = 2 Then%>
					<div class="level2">
						<dnn:BREADCRUMB ID="dnnBreadcrumb2" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;span class=&quot;sep&quot;&gt; &lt;i class=&quot;fa-solid fa-arrow-right-long&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; &lt;/span&gt;" HideWithNoBreadCrumb="true" />
					</div>
					<% Else%>
						<dnn:BREADCRUMB ID="dnnBreadcrumb3" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;span class=&quot;sep&quot;&gt; &lt;i class=&quot;fa-solid fa-arrow-right-long&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; &lt;/span&gt;" HideWithNoBreadCrumb="true" />
					<% End If%>
				</div>
				<div class="page-title">
					<h1><%=PortalSettings.ActiveTab.Title %></h1>	
				</div>
			</div>
		</div>
	</div>
</div>				
<div id="body-content">
	<div class="container">
		<div class="row">
			<div class="twelve columns">
				<div id="ContentPane" runat="Server"></div>
			</div>
		</div>
    </div>
</div>
</main>
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->