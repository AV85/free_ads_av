$(document).on('ready turbolinks:load', function() {
  $('.owl-carousel').owlCarousel({
    items:1,
    dots:true,
    loop:true,
    margin:15,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:true,
  });
});