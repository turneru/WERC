<footer role="contentinfo">
    <div id="footer" class="clearfix">
        <div class="container">
			<div class="row no-margin">
                <div class="col-md-12">
                    <div class="footer-logo">
                        <a href="/"><img src="<%= SkinPath %>images/WERC_Tagline_REV.svg" alt="WERC" width="243" /></a>
                    </div>
                </div>
            </div>    
            <div class="row no-margin subscribe-social-row">
                <div class="col-md-6 left-side">
                    <div class="subscribe">
                        <div class="title">
                            Check out our newsletter!
                        </div>
                        <a href="/News#newsletter" class="button-secondary">subscribe</a>
                    </div>
                </div>
                <div class="col-md-6 right-side">
                    <div class="social">
                        <a href="https://www.linkedin.com/company/66468?trk=tyah&trkInfo=clickedVertical%3Acompany%2CclickedEntityId%3A66468%2Cidx%3A3-1-6%2CtarId%3A1458075737848%2Ctas%3Aworldwide%20ERC" class="social_media" target="_blank"><i class="fa-brands fa-linkedin-in fa-fw"></i></a>
						<a href="https://www.facebook.com/WorldwideERC" class="social_media" target="_blank"><i class="fa-brands fa-facebook-f fa-fw"></i></a>
						<a href="https://www.instagram.com/worldwideerc/" class="social_media" target="_blank"><i class="fa-brands fa-instagram fa-fw"></i></a>
                        <a href="https://twitter.com/WorldwideERC" class="social_media" target="_blank"><i class="fa-brands fa-x-twitter fa-fw"></i></a>
					</div>
                </div>	
			</div>
            <div class="row copyright-address-row">
                <div class="col-md-6 left-side">
                    <div class="copyright">
                        Copyright &copy; <span id="year"></span>, WERC® All rights reserved<br />
                        <a href="/Privacy-Policy" class="footer-link">Privacy Policy</a> | <a href="/Copyright-Complaints" class="footer-link">Copyright Complaints</a> | <a href="https://20762520.hs-sites.com/knowledge?__hstc=116368473.561d1e78f8b84127194b4c562382946b.1680798958435.1718214954676.1718384567154.245&__hssc=116368473.17.1718384567154&__hsfp=3523199817" target="_blank" class="footer-link">Help Center</a>
                    </div>
                </div>
                <div class="col-md-6 right-side">
                    <div class="address">
                        2001 K Street NW, #300 | Washington, DC 20006 USA<br />
                        +1 703 842 3400 | <a href="mailto:info@talenteverywhere.org" class="footer-link">info@talenteverywhere.org</a>
                    </div>
                </div>	
			</div>
            <div class="row no-margin">
                <div class="twelve columns center">
                    <% If Request.IsAuthenticated Then%>
                		<a href="/home/ctl/logoff" class="hidden_link">Logoff</a>
            		<% Else%>
               			<a href="/login.aspx?mode=host" class="hidden_link">Login</a>
            		<% End If%>
                </div>
            </div>
        </div>
    </div>
</footer>
	
<script>
AOS.init({
  //duration: 1200,
})

//Header Search show hide function	
$( "#showsearch" ).hover(
	function() {
		$(".search-panel").addClass("show-search");
		$(this).addClass("active-search");
		return false;
	}
);
$( ".search-panel" ).mouseenter(
	function() {
		$("#showsearch").addClass("active-search");
	}
);	

$( ".search-panel" ).mouseleave(
	function() {
		$(".search-panel").removeClass("show-search");
		$("#showsearch").removeClass("active-search");
	}
);	
	
//Header Search placeholder
$(document).ready(function(){   
    $(".bstrap30 .input-group input").attr("placeholder", "type here...");	
});	

//Add Search to Mobile Menu
function addSearch() {
    var searchPanel = $(".search-panel").html();
    $(".slicknav_nav").prepend(searchPanel);
      //$(".col-md-10 .search_panel").remove();
}

//Add open class to mobile menu to control css
function slicknavOpen() {
   var menuTrigger = $(".slicknav_menu > a.slicknav_btn");
    if (menuTrigger.hasClass('slicknav_open')) {
      $(".slicknav_menu").addClass("open");
      $("#header .logo img").hide();
    }
}
//Remove open class from mobile menu
function slicknavClosed() {
	var menuTrigger = $(".slicknav_menu > a.slicknav_btn");
    if (menuTrigger.hasClass('slicknav_collapsed')) {
      $(".slicknav_menu").removeClass("open");
      $("#header .logo img").show();
    }
}	

//Slicknav close open menu items when opening another
function slicknavOpened(trigger) {
    var $trigger = $(trigger[0]);
    if ($trigger.hasClass('slicknav_btn')) {
        // this is the top-level menu/list opening.
        // we only want to trap lower-level/sublists.
        return;
    }
    // trigger is an <a> anchor contained in a <li>
    var $liParent = $trigger.parent();
    // parent <li> is contained inside a <ul>
    var $ulParent = $liParent.parent();
    // loop through all children of parent <ul>
    // i.e. all siblings of this <li>
    $ulParent.children().each(function () {
        var $child = $(this);
        if ($child.is($liParent)) {
            // this child is self, not is sibling
            return;
        }
        if ($child.hasClass('slicknav_collapsed')) {
            // this child is already collapsed
            return;
        }
        if (!$child.hasClass('slicknav_open')) {
            // could throw an exception here: this shouldn't happen
            // because I expect li to have class either slicknav_collapsed or slicknav_open
            return;
        }
        // found a sibling <li> which is already open.
        // expect that its first child is an anchor item.
        var $anchor = $child.children().first();
        if (!$anchor.hasClass('slicknav_item')) {
            return;
        }
        // close the sibling by emulating a click on its anchor.
        $anchor.click();
    });
}

//Add Login link to Mobile Menu
function addLinks() {
      //var headerLinks = $("#header .top-links a.login")[0].outerHTML;
      var headerLinks = $("#header .top-links a.login")[0].outerHTML;
      $("#header .slicknav_nav").append(headerLinks);
}

//Main Nav	
$(function() { 
	$('#navigation .nav #dnnMenu .topLevel').slicknav({
        allowParentLinks: true,
        appendTo: "#header",
        init: function() { addLinks(); addSearch(); },
        beforeOpen: function(trigger) { slicknavOpened(trigger); slicknavOpen(); }, 
		beforeClose: function() { slicknavClosed(); }
	});
});	

//Mobility News Nav
$(function() { 
	$('#news-nav #eventMenu .topLevel').slicknav({
        allowParentLinks: true,
        appendTo: "#news-nav",
        beforeOpen: function(trigger) { slicknavOpened(trigger);}
	});
});	

//Prospectus Nav
$(function() { 
	$('#prospectus-nav #eventMenu .topLevel').slicknav({
        allowParentLinks: true,
        appendTo: "#prospectus-nav",
        beforeOpen: function(trigger) { slicknavOpened(trigger);}
	});
});	

//Accordion js	
$(document).ready(function(){   
  $("div.toggler").click(function() {
    if ($('.toggle_info').is(':visible')) {
      $(".toggle_info").slideUp(300);
			$("h5 i").removeClass('minus-sign').addClass('plus-sign');
			$(".col-md-12").removeClass("open");
    }
    if ($(this).next(".toggle_info").is(':visible')) {
      $(this).next(".toggle_info").slideUp(300);
			$(this).prev(".col-md-12").removeClass("open");
			$("h5 i").removeClass('minus-sign').addClass('plus-sign');
    } 
    else {
      $(this).next(".toggle_info").slideDown(300);
			$(this).find("h5 i").addClass('minus-sign');
			$(this).parent(".col-md-12").addClass("open");
    }
  });
});	

// $(document).ready(function() {
//     if (window.devicePixelRatio > 1) {
//         $('body').css('zoom', '80%');
//     }
// });

$(document).ready(function() {
    $(".featured-webinar-card, .webinar-article-card, .benefit-item, .event-article-card, .news-article-card, .featured-news-card, .public-policy-card, .one-take-card, .statement-card.werc-card").click(function(){
        window.location = $(this).attr("data-href");
        return false;
    });

    $(".statement-card.letter-card, .education-item").click(function(){
        window.open($(this).data("href"));
        return false;
    });

    setTimeout(function() { 
		$(".featured-webinar-card, .webinar-article-card, .benefit-item, .event-article-card, .news-article-card, .featured-news-card, .public-policy-card, .one-take-card, .statement-card.werc-card").click(function(){
            window.location = $(this).attr("data-href");
            return false;
        })
    }, 500);

    // setTimeout(function() { 
	// 	$(".statement-card").click(function(){
    //         window.open($(this).data("href"));
    //         return false;
    //     })
    // }, 500);
});

//EasyDNN load more button text
$(".eds_news_sb_skin.eds_subCollection_news .ednMoreArticlesTriggerWrapper > button.trigger > span.actionTextContainer span").text("Load More");	
$(".ednMoreArticlesTriggerWrapper > button.trigger").click(function() {
	setTimeout(function() { 
		$(".eds_news_sb_skin.eds_subCollection_news .ednMoreArticlesTriggerWrapper > button.trigger > span.actionTextContainer span").text("Load More");
	}, 500);
    setTimeout(function() { 
		$(".featured-webinar-card, .webinar-article-card, .education-item, .benefit-item, .event-article-card, .news-article-card, .featured-news-card, .public-policy-card, .statement-card.werc-card").click(function(){
            window.location = $(this).attr("data-href");
            return false;
        })
    }, 500);
    setTimeout(function() { 
		$(".statement-card.letter-card").click(function(){
            window.open($(this).data("href"));
            return false;
        })
    }, 500);
    setTimeout(function() { 
        $('.button-secondary.infographic-btn').click(function (t) {
            $(this).parent().next('.infographic-popup').fancybox({
                'overlayShow': true
            }).trigger('click');
            t.stopPropagation();
        });	
    }, 500);
});		

//Newsletter sign up form button
$(document).ready(function() {
    setTimeout(function() { 
		$("#hsForm_4ff9cf73-f3c4-45a3-bff1-cfd9d2534d12 .hs-submit .actions input.hs-button").attr('value', 'sign me up!');
    }, 350);
});

//Article login redirect link
$(document).ready(function() {	
    $("#login_redirect").attr("href", "/login?returnurl="  + window.location.href);
});


//Infographic popup                     
function infoGloginLink() {
    window.open("/login.aspx?appctx=/NavToAuth.aspx?RedirectURL=https://werc-hub.stage.itswebs.com/Default.aspx?TabId=154&language=en-US","_self");
}  
 
function infoGmemLink() {
    window.open("/Membership/Join-WERC","_self");
} 
 
$(document).ready(function () {
    $('.button-secondary.infographic-btn').click(function (t) {
        $(this).parent().next('.infographic-popup').fancybox({
            'overlayShow': true
        }).trigger('click');
        t.stopPropagation();
    });	
});


//Copyright Year
var currentYear = (new Date()).getFullYear();
$(document).ready(function() {
	$("#year").text(currentYear);
});	

//Hide elements from Host login
if (window.location.href.indexOf("login.aspx?") > -1) {
    $("#hero, #news, #event, #member, #education h1, #education .education-rotator, #certification, #partners").hide();
} 		

//Cookie popup
$(document).euCookieLawPopup().init({
  popupPosition : 'bottom',
  colorStyle : 'default',
  compactStyle : false,
  popupTitle : 'This website is using cookies',
  popupText : 'This website uses cookies to ensure you get the best experience on our website. To learn more about cookies and how we use them, please view our <a href="/Privacy-Policy">privacy policy</a>.',
  buttonContinueTitle : 'Agree',
  buttonLearnmoreTitle : '',
  buttonLearnmoreOpenInNewWindow : true,
  agreementExpiresInDays : 30,
  autoAcceptCookiePolicy : false,
  htmlMarkup : null
});
	
</script>

<script type="text/javascript">
	_linkedin_partner_id = "7712737";
	window._linkedin_data_partner_ids = window._linkedin_data_partner_ids || [];
	window._linkedin_data_partner_ids.push(_linkedin_partner_id);
</script>
<script type="text/javascript">
	(function(l) {
	if (!l){window.lintrk = function(a,b){window.lintrk.q.push([a,b])};
	window.lintrk.q=[]}
	var s = document.getElementsByTagName("script")[0];
	var b = document.createElement("script");
	b.type = "text/javascript";b.async = true;
	b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";
	s.parentNode.insertBefore(b, s);})(window.lintrk);
</script>
<noscript>
	<img height="1" width="1" style="display:none;" alt="" src="https://px.ads.linkedin.com/collect/?pid=7712737&fmt=gif" />
</noscript>

<script>	
// added by joshua with ID on login for proper redirect
    var login_url = "/login?returnurl="+location.pathname;
    var element = document.getElementsByClassName('siteLogin');
    for (index = 0; index < element.length; ++index) {
        if(location.pathname.length > 1){
        element[index].setAttribute("href",login_url);
        }
        else{
        element[index].setAttribute("href","/login?returnurl=");
        }
    }
    //element.setAttribute("href",login_url);
</script>

<script language="vb" runat="server">
	Public Function GetReturnUrl() As String
		If Request.Cookies("lastURL") Is Nothing Then
			Dim aCookie As New HttpCookie("lastURL")
			aCookie.Value = HttpContext.Current.Request.Url.ToString()
			aCookie.Expires = DateTime.Now.AddDays(1)
			Response.Cookies.Add(aCookie)
		Else
		    Response.Cookies("lastURL").Value = HttpContext.Current.Request.Url.ToString()
			Response.Cookies("lastURL").Expires = DateTime.Now.AddDays(1)
		End If


		Dim returnUrl As String = "?RedirectURL=" & HttpContext.Current.Request.Url.ToString()
		Return returnUrl
	End Function

</script>


