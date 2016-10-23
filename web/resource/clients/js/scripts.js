var backtotop = function(){
	$(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.backtotop').fadeIn();
        } else {
            $('.backtotop').fadeOut();
        }
    });

    $('.backtotop').click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });
};

var menumobile = function(){

    $('.btn-menumobile').click(function(){
        $(this).parents('.style').find('.mainmenu').toggleClass('active');
        $(this).parents('.templ, .header').toggleClass('active');
        $(this).parents('.style').toggleClass('overflow');
        
          $('.btn-closemenu').click(function(){
            if( $('.mainmenu').hasClass('active') ){
              $('.mainmenu,.templ,.header').removeClass('active');
              $('.style').removeClass('overflow');
            }
          })
        return false;
    });
   
   var swidth = $(window).width();
   if(swidth < 769){
     $('.parents >a').click(function(){
      $(this).next('.submenu').toggle();
      return false;
    })
   }
};

var run_scrollToFix = function(){
    var swidth = $(window).width();
    if( swidth < 769 ){
      $('.style').scrollToFixed();  
    }
}

var temp = function(){
    $('.disabled a').click(function(){
      return false;
    });
};

var slide = function(){
    var mySwiper = new Swiper ('.hightlight .swiper-container', {
      // Optional parameters
      direction: 'horizontal',
      loop: true,
      autoplay: 4000,
      paginationClickable: true,
      pagination: '.hightlight .swiper-pagination'
    })        
}

var slide2 = function(){

    // create a make_point

    //load slide on screen < 640
    var mySwiper = new Swiper ('.mobile_slide .swiper-container', {
      // Optional parameters
      direction: 'horizontal',
      loop: true,
      autoplay: 4000,
      paginationClickable: true,
      pagination: '.mobile_slide .swiper-pagination'
    });
};

var inclueregion = function(){
   $("header").load("header.html");
   $("footer").load("footer.html");
};

var search = function(){
  var abc = $('.searchform');
  
  var swidth = $(document).width();
  if(swidth>768){
    if(abc.hasClass('active')){
      
    }else {
      abc.click(function(event){
        event.stopPropagation();
        $(this).addClass('active');
        $('.searchform.active .btnsearch').click(function(){
          return false;
        });
        $(this).parents('body').addClass('formact');
      });

      $(document).click( function(){
          abc.removeClass('active');
          $('body').removeClass('formact');
      });
    };
    
  }
};

var validate_form = function(){
  $(".selector").validate({
    rules: {
      name: "required",
      email: {
        required: true,
        email: true
      }
    },
    messages: {
      name: "Please specify your name",
      email: {
        required: "We need your email address to contact you",
        email: "Your email address must be in the format of name@domain.com"
      }
    }
  });
};
// var verticalslide = function(){
//  $(".vertical-slide").slick({
//      dots: false,
//      infinite: true,
//      slidesToShow: 5,
//      slidesToScroll:1,
//      vertical: true,
//      autoplay: true,
//      autoplaySpeed: 3000,
//      prevArrow:false,
//      nextArrow:false,
//       });
// }
var show_name_before_uploadFile = function(){
  $('input[type="file"]').change(function(){
    var showname = $('.formupload span');
    var file = this.files[0];
    showname.text('' + file.name + '');
  });
};

function newsSlider() {
        var navslider = ['<img src="resource/clients/images/back.png">', '<img src="resource/clients/images/next.png">'];
        $('.newsSlider').each(function() {
            var el = $(this);
            el.owlCarousel({
                loop: true,
                margin: 0,
                nav: true,
                responsive: {
                    0:{
                        items: 1
                    },
                    768:{
                        items: 2
                    },
                    1200:{
                        items: 2
                    },
                    1500:{
                        items: 2
                    }
                },
                navText: navslider,
            });
        });

    }
// var colorbox=function(){
  
//   var swidth = $(document).width();
//   if( swidth < 769 ){
//     $(".group").colorbox({rel:'group',innerWidth: '90%'});
//     $('.non-retina').colorbox({rel:'group'});
//   }
//   else {
//     $(".group").colorbox({rel:'group'});
//    $('.non-retina').colorbox({rel:'group', transition:'none'});
//   }
// }


//set equal height for responsive
var equal_height = function(){
  setHeights = function(){
    var a = $('.contents .topnews .bgnew');
    var b = a.parents('.topnews');
    // var c = a.find('h3').find('a');
    var a_height = a.outerHeight();
    b.css('min-height',a_height);
  }

  $(window).load(function() {
    setHeights();
  });
  $( window ).on( 'resize', setHeights );
}

var video=function(){

$('#player1').mediaelementplayer({
    m:1,features: ['playpause','current','progress','duration','volume','tracks','fullscreen'],
  });

}

$(document).ready(function(){
    backtotop();
    video();
    menumobile();
    slide();
    slide2();
    temp();
    search();
    show_name_before_uploadFile();
    newsSlider();
    // verticalslide();
});