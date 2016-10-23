var chiaslide = function(){
  var swidth = $(window).width();
  var slide = $('.listclients, .logo-customer');
  if( swidth<769 ){
    var prt = slide.find('.listwraper ul');
    slide.find('.listwraper').addClass('swiper-container');
    prt.addClass('swiper-wrapper');
    prt.find('li').addClass('swiper-slide');
    slide.find('.backbtn').addClass('swiper-button-prev');
    slide.find('.nextbtn').addClass('swiper-button-next');
    // var btn = slide.find('.listwraper');
    // btn.append("<a class='btns swiper-button-prev'></a><a class='btns swiper-button-next'></a>")
  }else {
    var prt = slide.find('.listwraper');
    slide.addClass('jcarousel-wrapper');
    prt.addClass('jcarousel');
    slide.find('.backbtn').addClass('jcarousel-control-prev');
    slide.find('.nextbtn').addClass('jcarousel-control-next');
  }
};

var customer_client = function(){
  var swidth = $(window).width();

  if(swidth > 768){
    var swiper = new Swiper('.customerbg .swiper-container', {
        spaceBetween: 15.3+'%',
        pagination: '.swiper-pagination',
        slidesPerView: 3,
        paginationClickable: true,
        autoplay: 4000,
        loop: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev'
    });

  }else {
    var swiper = new Swiper('.customerbg .swiper-container', {
        spaceBetween: 20,
        pagination: '.swiper-pagination',
        slidesPerView: 3,
        paginationClickable: true,
        autoplay: 4000,
        loop: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev'
    });
  }
}

var slide3 = function(){
	var mySwiper = new Swiper ('.listclients .swiper-container', {
      // Optional parameters
      direction: 'horizontal',
      loop: true,
      autoplay: 4000,
      nextButton: '.nextbtn',
	  prevButton: '.backbtn'
    })     
};

$(document).ready(function(){
	chiaslide();
  customer_client();
	slide3();
})