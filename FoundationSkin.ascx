<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="foundation-page-title">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="page-title">
					<img src="<%= SkinPath %>images/WERC_FoundationLogo.svg" alt="WERC Foundation" width="777" />
				</div>
			</div>
		</div>
	</div>
</div>
<div id="foundation-adspace">
	<!-- <div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div id="AdPane" runat="Server"></div>
			</div>
		</div>
	</div> -->
</div>			
<div id="body-content" class="foundation">
    <div id="foundation-top">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-12">
					<div id="ContentPane" runat="Server"></div>
				</div>
			</div>
        </div>
    </div>
    <div id="navy-arch"></div>
    <div id="foundation-events">
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
					<!-- <div class="upcoming-events"></div> -->
				</div>
			</div>
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="EventsBottomPane" runat="Server"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="foundation-scholarship">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-4">
					<div class="foundation-img">
						<img src="/Portals/_default/Skins/SiteSkin/images/foundation-img.png" alt="foundation image" class="img-responsive foundation-image" />
						<img src="/Portals/_default/Skins/SiteSkin/images/Lines_RedPurple.svg" alt="purple and red circle outline" class="lines-red-purple" data-aos="circle-rotate" data-aos-once="true" />
					</div>
				</div>
				<div class="col-md-8">
					<div class="foundation-text">
                        <div id="ScholarshipTextPane" runat="Server"></div>
					</div>
				</div>
			</div>
        </div>
    </div>
    <div id="foundation-bottom">
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

    $('.edn_499_article_list_wrapper').slick({
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