(function($){
    $.strobe = function(el, options){
        var base = this;

        base.$el = $(el);
        base.el = el;

        base.$el.data("strobe", base);
        
        base.init = function(){
            if( typeof( times ) === "undefined" || times === null ) times = 3;
            if( typeof( speed ) === "undefined" || speed === null ) speed = 200;
            
            base.times = times;
            base.speed = speed;
            
            base.options = $.extend({},$.strobe.defaultOptions, options);
				var plays = 0;
            var strobing = setInterval(function() {
					base.$el.fadeOut(base.options.speed, function() { base.$el.fadeIn(base.options.speed) });
					plays++;
					if(plays>=base.options.times) { clearInterval(strobing); }
				},base.options.speed*2);

        };
        base.init();
    };
    
    $.strobe.defaultOptions = {
        times: 10,
        speed: 20
    };
    
    $.fn.strobe = function(options){
        return this.each(function(){
            (new $.strobe(this, options));
        });
    };
    
})(jQuery);
function releasespage()
{
	$('#releases').fadeIn('slow');
		var releaseslist = $('#carousel1');
		var releasetitle = $('#releasetitle');
		var usedreleases = $('#usedbutton-releases');
		var contactreleases = $('#contactbutton-releases');
		var bannerreleases = $('#banner-releases');

		$('#carousel1').CloudCarousel(		
			{			
				xPos: 300,
				yPos: 120,
				reflGap: 20,
				yRadius: 1,
				buttonLeft: $("#left-but"),
				buttonRight: $("#right-but"),
				altBox: $("#alt-text"),
				titleBox: $("#title-text")
			}
		);

		usedreleases.bind('mouseover', function() {
			$('#usedimage-releases').attr("src","/images/usedbuttondown.png");
		}).bind('mouseout',function(){
		    $('#usedimage-releases').attr("src","/images/usedbutton.png");
		});
		contactreleases.bind('mouseover', function() {
			$('#contactimage-releases').attr("src","/images/contactbuttondown.png");
		}).bind('mouseout',function(){
		    $('#contactimage-releases').attr("src","/images/contactbutton.png");
		});
		$('.logo-link-banner').bind('mouseover', function() {
			bannerreleases.attr("src","/images/homelogosmallglow.png");
		}).bind('mouseout',function(){
		    bannerreleases.attr("src","/images/homelogosmall.png");
		});
		$('#usedbutton-releases').click(function(){
			$('#release-top-bar').fadeOut('slow');
			$('#releases').fadeOut('slow');
			usedpage();
		});
		$('#contactbutton-releases').click(function(){
			$('#releases').fadeOut('slow');
			contactpage();
		});
		$('.logo-link-banner').unbind('click').click(function(){
			$('#releases').fadeOut('slow');
			$('#home').fadeIn('slow');
		});
	setInterval(function() { bannerreleases.strobe();}, 4500);
	setInterval(function() { usedreleases.strobe();}, 3500); 
	setInterval(function() { contactreleases.strobe();}, 2500);
	setInterval(function() { releasetitle.strobe();}, 2000);
}
function usedpage()
{
	$('#vinyl').fadeIn('slow');
		var vinyltitle = $('#vinyltitle');
		var releasesvinyl = $('#releasebutton-vinyl');
		var contactvinyl = $('#contactbutton-vinyl');
		var bannervinyl = $('#banner-vinyl');

		releasesvinyl.bind('mouseover', function() {
			$('#releaseimage-vinyl').attr("src","/images/releasesbuttondown.png");
		}).bind('mouseout',function(){
		    $('#releaseimage-vinyl').attr("src","/images/releasesbutton.png");
		});
		contactvinyl.bind('mouseover', function() {
			$('#contactimage-vinyl').attr("src","/images/contactbuttondown.png");
		}).bind('mouseout',function(){
		    $('#contactimage-vinyl').attr("src","/images/contactbutton.png");
		});
		$('.logo-link-banner').bind('mouseover', function() {
			bannervinyl.attr("src","/images/homelogosmallglow.png");
		}).bind('mouseout',function(){
		    bannervinyl.attr("src","/images/homelogosmall.png");
		});
		$('#releasebutton-vinyl').click(function(){
			$('#vinyl').fadeOut('slow');
			releasespage();
		});
		$('#contactbutton-vinyl').click(function(){
			$('#vinyl').fadeOut('slow');
			contactpage();
		});
		$('.logo-link-banner').unbind('click').click(function(){
			$('#vinyl').fadeOut('slow');
			$('#home').fadeIn('slow');
		});
	setInterval(function() { bannervinyl.strobe();}, 4500);
	setInterval(function() { releasesvinyl.strobe()}, 3500); 
	setInterval(function() { contactvinyl.strobe();}, 2500);
	setInterval(function() { vinyltitle.strobe();}, 2000);
}
function contactpage()
{
	$('#contact').fadeIn('slow');
		var contacttitle = $('#contacttitle');
		var usedcontact = $('#usedbutton-contact');
		var releasescontact = $('#releasebutton-contact');
		var bannercontact = $('#banner-contact');

		usedcontact.bind('mouseover', function() {
			$('#usedimage-contact').attr("src","/images/usedbuttondown.png");
		}).bind('mouseout',function(){
		    $('#usedimage-contact').attr("src","/images/usedbutton.png");
		});
		releasescontact.bind('mouseover', function() {
			$('#releaseimage-contact').attr("src","/images/releasesbuttondown.png");
		}).bind('mouseout',function(){
		    $('#releaseimage-contact').attr("src","/images/releasesbutton.png");
		});
		$('.logo-link-banner').bind('mouseover', function() {
			bannercontact.attr("src","/images/homelogosmallglow.png");
		}).bind('mouseout',function(){
		    bannercontact.attr("src","/images/homelogosmall.png");
		});
		$('#releasebutton-contact').click(function(){
			$('#contact').fadeOut('slow');
			releasespage();
		});
		$('#usedbutton-contact').click(function(){
			$('#contact').fadeOut('slow');
			usedpage();
		});
		$('.logo-link-banner').unbind('click').click(function(){
			$('#contact').fadeOut('slow');
			$('#home').fadeIn('slow');
		});
	setInterval(function() { bannercontact.strobe();}, 4500);
	setInterval(function() { usedcontact.strobe();}, 3500); 
	setInterval(function() { releasescontact.strobe();}, 2500);
	setInterval(function() { contacttitle.strobe();}, 2000);

}

$(document).ready(function(){
	var banner = $('#logo-banner');
	var releases = $('#releasebutton');
	var used = $('#usedbutton');
	var contact = $('#contactbutton');
	var skull1 = $('#skull1');
	var skull2 = $('#skull2');
	$('#releases').hide();
	$('#vinyl').hide();
	$('#contact').hide();
	releases.hide();
	used.hide();
	contact.hide();
	banner.hide();
	skull1.hide();
	skull2.hide();
	banner.delay(2000).fadeIn('slow');
	releases.delay(4000).fadeIn('slow');
	skull1.delay(5000).fadeIn('slow');
	releases.css('cursor','pointer');
	used.delay(6000).fadeIn('slow');
	skull2.delay(7000).fadeIn('slow');
	used.css('cursor','pointer');
	contact.delay(8000).fadeIn('slow');
	contact.css('cursor','pointer');

	releases.bind('mouseover', function() {
		$('#releaseimage').attr("src","/images/releasesbuttondown.png");
	}).bind('mouseout',function(){
	    $('#releaseimage').attr("src","/assets/releasesbutton.png");
	});
	used.bind('mouseover', function() {
		$('#usedimage').attr("src","/images/usedbuttondown.png");
	}).bind('mouseout',function(){
	    $('#usedimage').attr("src","/assets/usedbutton.png");
	});
	contact.bind('mouseover', function() {
		$('#contactimage').attr("src","/images/contactbuttondown.png");
	}).bind('mouseout',function(){
	    $('#contactimage').attr("src","/assets/contactbutton.png");
	});


	var i1 = 1;
	var i2 = 1;
	var i3 = 1;
	var i4 = 1;
	setInterval(function() { i1++; banner.strobe();}, 2500);
	// setInterval(function() { $('#skullpic1').attr("src","/images/skullsyellow.png").delay(1000).attr("src","/images/skullsblack.png");console.log('skull1'); }, 4000);
	// setInterval(function() { $('#skullpic2').attr("src","/images/skullsyellow.png").delay(1000).attr("src","/images/skullsblack.png");console.log('skull2'); }, 4000);
	setInterval(function() { i2++; releases.strobe();}, 3500); 
	setInterval(function() { i3++; used.strobe();}, 8500); 
	setInterval(function() { i4++; contact.strobe();}, 6500);

	$('#releasebutton').click(function(){
		$('#home').fadeOut();
		releasespage();
	});
	$('#usedbutton').click(function(){
		$('#home').fadeOut();
		usedpage();
	});
	$('#contactbutton').click(function(){
		$('#home').fadeOut();
		contactpage();
	});

});
