<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="news-page-title">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="page-title">
					<a href="/News"><img src="<%= SkinPath %>images/WERC_MobilityNews_Logo_rev.svg" alt="Mobility News" width="391" /></a>
					<h1 style="opacity: 0; height: 0;">mobility news</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="news-nav">
    <div class="container">
        <dnn:MENU MenuStyle="DNNEvent" runat="server" nodeselector="42"></dnn:MENU>
    </div>
</div>			
<div id="body-content" class="news">
    <div class="container">
        <div class="row no-margin">
			<div class="col-md-12">
				<div id="ContentPane" runat="Server"></div>
			</div>
		</div>
    </div>
</div>
</main>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->