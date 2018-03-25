$(window).scroll(function() {
	if ($(this).scrollTop() > 1){  
	    $('header').addClass("sticky");
	  }
	  else{
	    $('header').removeClass("sticky");
	  }
});
$(window).scroll(function() {
  if ($(this).scrollTop() > 1){  
      $('.top-hide').addClass("sticky-top-hide");
    }
    else{
      $('.top-hide').removeClass("sticky-top-hide");
    }
});

$(document).ready(function () {
    $('#slider-main').owlCarousel({
        autoPlay : 5000,
        slideSpeed: 600,
        singleItem : true,
        autoHeight : true,
        pagination: false,
        loop:true,
        transitionStyle:"fade"
    });
    $('#slider-news').owlCarousel({
        loop:true,
        pagination: false,
        paginationNumbers: false,
        margin:15,
        items:3,
        autoPlay: true,
        autoHeight: true,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [980, 2],
        itemsTablet: [768, 1],
        itemsMobile: [479, 1],
        navigation: true,
        navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
    });
});

function heightsame(idx){
   var highestBox = 0;
        $(idx).each(function(){  
                if($(this).height() > highestBox){  
                highestBox = $(this).height();  
        }
    });    
    $(idx).height(highestBox); 
}
$(document).ready(function(){

    heightsame(".heightsame");
});


function sameheight(idx){
   var highestBox = 0;
        $(idx).each(function(){  
                if($(this).height() > highestBox){  
                highestBox = $(this).height();  
        }
    });    
    $(idx).height(highestBox); 
}
$(document).ready(function(){

    sameheight(".sameheight");
});


