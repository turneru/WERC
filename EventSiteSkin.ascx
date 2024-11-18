<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="event-header">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
                <div id="EventHeaderPane" runat="Server"></div>
			</div>
		</div>
	</div>
</div>
<div id="event-mobile-nav">
	<div class="container">
		<div class="row no-margin mobile">
			<div class="twelve columns">
                <div id="EventMobileMenu"></div>
			</div>
		</div>
	</div>
</div>					
<div id="body-content" class="event-body">
	<div class="container">
		<div class="row">
			<div class="twelve columns">
				<div id="ContentPane" runat="Server"></div>
			</div>
		</div>
    </div>
</div>
</main>

<script>
	//Event Nav
	$(function() { 
		$('#eventMenu .topLevel').slicknav({
			allowParentLinks: true,
			appendTo: "#EventMobileMenu",
			beforeOpen: function(trigger) { slicknavOpened(trigger);}
		});
	});	
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->