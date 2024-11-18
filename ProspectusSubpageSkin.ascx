<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="prospectus-page-title" class="subpage">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="page-title">
					<h1><%=PortalSettings.ActiveTab.Title %></h1>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="prospectus-nav" class="subpage">
    <div class="container">
        <dnn:MENU MenuStyle="DNNEvent" runat="server" nodeselector="58"></dnn:MENU>
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