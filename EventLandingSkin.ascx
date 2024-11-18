<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="events-hero">
    <div class="container">
        <div class="row no-margin">
            <div class="col-md-6">
                <h1 data-aos="fade-right" data-aos-once="true" data-aos-duration="1200">WERC</h1>
                <h1 data-aos="fade-left" data-aos-once="true" data-aos-duration="1200" class="line2"><span>events</span></h1>
                <h2 data-aos="fade-up" data-aos-once="true" data-aos-duration="1200" data-aos-delay="300">your gateway to talent mobility</h2>
                <p data-aos="fade-up" data-aos-once="true" data-aos-duration="1200" data-aos-delay="550">Discover the world of talent mobility like never before with WERC’s comprehensive lineup of events, designed to connect, educate, and inspire professionals across the global workforce mobility industry.<br><br>
                From regional summits in vibrant cities to our flagship Global Workforce Symposium, WERC events are meticulously crafted to foster innovation, share cutting-edge research, and facilitate unparalleled networking opportunities.</p>
            </div>
            <div class="col-md-6">
                <!-- <img src="/Portals/_default/Skins/SiteSkin/images/Lines_ColorWheel.svg" alt="Color wheel and circular lines graphic" class="color-wheel desktop" /> -->
                <img src="/Portals/_default/Skins/SiteSkin/images/ColorWheel_events.png?v=1" alt="Color wheel and circular lines graphic" class="color-wheel desktop" />
                <img src="/Portals/_default/Skins/SiteSkin/images/ColorWheel_events.png?v=1" alt="Color wheel and circular lines graphic" class="color-wheel mobile" />
            </div>
        </div>
    </div>	
</div>
<div id="body-content" class="events">
    <div id="upcoming-events">
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
        </div>
    </div>
    <div id="navy-arch-reverse"></div>
    <div id="events-top">
        <div class="container">
            <div class="row no-margin">
                <div class="col-md-4">
                    <div class="events-img">
                        <img src="/Portals/_default/Skins/SiteSkin/images/events-img.png" alt="events image" class="img-responsive events-image" />
                        <img src="/Portals/_default/Skins/SiteSkin/images/Lines_GreenYellow.svg" alt="yellow and green circle outline" class="lines-green-yellow" data-aos="circle-rotate" data-aos-once="true" />
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="events-text">
                        <h1>Why attend<br><span>WERC events?</span></h1>
                        <div id="ContentPane" runat="Server"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="events-bottom">
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