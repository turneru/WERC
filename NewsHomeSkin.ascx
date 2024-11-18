<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">
<div id="skip_to_content"></div>
<div id="news-page-title">
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div class="page-title">
					<img src="<%= SkinPath %>images/WERC_MobilityNews_Logo_rev.svg" alt="Mobility News" width="391" />
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
    <div id="news-top">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-12">
					<div id="FeaturedPane" runat="Server"></div>
				</div>
			</div>
            <!-- <div class="row no-margin banner-row">
				<div class="col-md-12">
					<div id="BannerPane" runat="Server"></div>
				</div>
			</div> -->
            <div class="row no-margin">
				<div class="col-md-12">
					<div id="ContentPane" runat="Server"></div>
				</div>
			</div>
        </div>
    </div>
    <div id="navy-arch"></div>
    <div id="public-policy">
        <div class="container">
            <div class="row no-margin">
				<div class="twelve columns">
					<h1>Public <span>Policy</span></h1>
				</div>
			</div>
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="PublicPolicyPane" class="public-policy" runat="Server"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="newsletter">
        <div class="container">
            <div class="row no-margin">
				<div class="col-md-4">
					<div class="news-img">
						<img src="/Portals/_default/Skins/SiteSkin/images/news-img.png" alt="newsletter image" class="img-responsive news-image" />
						<img src="/Portals/_default/Skins/SiteSkin/images/Lines_RedPurple.svg" alt="purple and red circle outline" class="lines-red-purple" data-aos="circle-rotate" data-aos-once="true" />
					</div>
				</div>
				<div class="col-md-8">
					<div class="news-text">
						<h1>Sign up for our<br><span>newsletter</span></h1>
                        <h2>Stay up-to-date with Mobility Minute</h2>
						<p>Check your inbox every Friday for the latest in global mobility and relocation news and trends. To be the best, you need to stay on top of the latest. We'll deliver you the most critical insights you need to keep your edge.</p>
                        <script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/embed/v2.js"></script>
                        <script>
                        hbspt.forms.create({
                            region: "na1",
                            portalId: "20762520",
                            formId: "4ff9cf73-f3c4-45a3-bff1-cfd9d2534d12"
                        });
                        </script>
					</div>
				</div>
			</div>
        </div>
    </div>
    <div id="one-take">
        <div class="container">
            <div class="row no-margin">
				<div class="twelve columns one-take-logo">
					<img src="<%= SkinPath %>images/WERC_OneTakeLogo_RGB_Hrz.svg" alt="Mobility News" width="537" />
				</div>
			</div>
            <div class="row no-margin">
                <div class="twelve columns">
                    <div id="OneTakePane" class="one-take-carousel" runat="Server"></div>
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
        
    $('.edn_474_article_list_wrapper').slick({
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

    $( ".one-take-card" ).wrap( "<div></div>" );
        
    $('.edn_480_article_list_wrapper').slick({
        variableHeight: true,
        slidesToShow: 3,
        speed: 1500,
        arrows: true,
        responsive: [
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1
            }
        }
    ]
    })
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->