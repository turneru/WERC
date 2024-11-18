<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="prospectus-page-title">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="page-title">
					<h1>meet mobility professionals where they are</h1>
                    <p>With a membership representing engaged talent mobility professionals across the globe, WERC offers unparalleled business development opportunities through advertisement and sponsorships.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="prospectus-nav">
    <div class="container">
        <dnn:MENU MenuStyle="DNNEvent" runat="server" nodeselector="58"></dnn:MENU>
    </div>
</div>				
<div id="body-content" class="prospectus">
    <div id="prospectus-top">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-4">
					<div class="prospectus-img">
						<img src="/Portals/_default/Skins/SiteSkin/images/prospectus-img.png" alt="prospectus image" class="img-responsive prospectus-image" />
						<img src="/Portals/_default/Skins/SiteSkin/images/Lines_YellowRed.svg" alt="yellow and red circle outline" class="lines-red-yellow" data-aos="circle-rotate" data-aos-once="true" />
					</div>
				</div>
				<div class="col-md-8">
					<div class="prospectus-text">
						<h1>Partner <span>with Us</span></h1>
						<div id="ContentPane" runat="Server"></div>
					</div>
				</div>
			</div>
            <div id="green-stat" data-aos="fade-up" data-aos-once="true" data-aos-duration="1200">
				<img src="/Portals/_default/Skins/SiteSkin/images/green-stat.svg" alt="2,750+ Companies Represented" width="266" />
			</div>
            <div id="red-stat" data-aos="fade-up" data-aos-once="true" data-aos-duration="1200" data-aos-delay="350" data-aos-anchor="#green-stat">
				<img src="/Portals/_default/Skins/SiteSkin/images/red-stat.svg" alt="50+ Countries Represented" width="202" />
			</div>
			<div id="yellow-stat" data-aos="fade-up" data-aos-once="true" data-aos-duration="1200" data-aos-delay="700" data-aos-anchor="#green-stat">
				<img src="/Portals/_default/Skins/SiteSkin/images/yellow-stat.svg" alt="5,000+ Community Members" width="282" />
			</div>
        </div>
    </div>
    <div id="blue-arch"></div>
    <div id="prospectus-events">
        <div class="container">
            <div class="row no-margin">
				<div class="twelve columns">
					<h1>Upcoming <span>Events</span></h1>
				</div>
			</div>
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="EventsTopPane" runat="Server"></div>
                </div>
            </div>
			<div class="row no-margin">
                <div class="twelve columns">
                    <div id="EventsRotatorPane" class="upcoming-events" runat="Server"></div>
                </div>
            </div>
			<div class="row no-margin">
                <div class="twelve columns">
                    <div id="EventsBottomPane" runat="Server"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="prospectus-bottom">
        <div class="container">
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="BottomPane" runat="Server"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>

<script>
    $( ".event-article-card" ).wrap( "<div></div>" );
    
    $('.edn_424_article_list_wrapper').slick({
        centerMode: true,
        variableWidth: true,
        variableHeight: true,
        slidesToShow: 1,
        speed: 1500,
        arrows: true,
        responsive: [
        {
            breakpoint: 768,
            settings: {
                centerPadding: '40px',
                slidesToShow: 3
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1
            }
        }
    ]
    }).on('beforeChange',function(){
		$(".slick-current").next().addClass('fade-in');
	}).on('afterChange',function(){
    	$(".slick-slide").removeClass('fade-in');
	});
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->