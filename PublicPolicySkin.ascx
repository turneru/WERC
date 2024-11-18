<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="public-policy-page-title">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="page-title">
					<h1>public policy</h1>
                    <p>From tax relief to immigration reform and real estate public policies to duty of care and compliance, WERC advocates for talent mobility professionals through our public policy efforts.  We engage on any issue that involves the movement of a current or potential employee by a company for employment purposes, seeking solutions that best enable companies to support a mobile workforce.</p>
				</div>
			</div>
		</div>
	</div>
</div>		
<div id="body-content" class="policy">
    <div id="policy-top">
        <div class="container">
            <div class="row no-margin">
                <div class="col-md-4">
                    <div class="policy-img">
                        <img src="/Portals/_default/Skins/SiteSkin/images/PublicPolicyImage.png" alt="policy image" class="img-responsive policy-image" />
                        <img src="/Portals/_default/Skins/SiteSkin/images/Lines_YellowPurple.svg" alt="purple and yellow circle outline" class="lines-yellow-purple" data-aos="circle-rotate" data-aos-once="true" />
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="policy-text">
                        <div id="ContentPane" runat="Server"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="navy-arch"></div>
    <div id="public-policy-news">
        <div class="container">
            <div class="row no-margin">
				<div class="twelve columns">
					<h2>public policy articles from mobility news</h2>
				</div>
			</div>
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="PolicyNewsRotatorPane" class="public-policy" runat="Server"></div>
                </div>
            </div>
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="PolicyNewsPane" runat="Server"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="statements">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-12">
					<div id="TopPane" runat="Server"></div>
				</div>
			</div>
        </div>
    </div>
    <div id="advocacy">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-4">
					<div class="advocacy-img">
						<img src="/Portals/_default/Skins/SiteSkin/images/advocacy-img.png" alt="advocacy image" class="img-responsive advocacy-image" />
						<img src="/Portals/_default/Skins/SiteSkin/images/Lines_PurpleGreen.svg" alt="purple and green circle outline" class="lines-green-purple" data-aos="circle-rotate" data-aos-once="true" />
					</div>
				</div>
				<div class="col-md-8">
					<div class="advocacy-text">
                        <div id="GetInvolvedPane" runat="Server"></div>
					</div>
				</div>
			</div>
        </div>
    </div>
</div>
</main>

<style>
    #footer {
        margin-top: 0;
        padding-top: 75px;
        background-color: rgba(201, 195, 172, 0.15);
    }
</style>

<script>
    $( ".public-policy-card" ).wrap( "<div></div>" );
        
    $('.edn_492_article_list_wrapper').slick({
        centerMode: true,
        variableWidth: true,
        variableHeight: true,
        slidesToShow: 3,
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