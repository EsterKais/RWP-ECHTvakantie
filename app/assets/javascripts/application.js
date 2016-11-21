//
//= require jquery
//  TURBOLINKS!!!
//= require jquery.turbolinks
//= require jquery_ujs
//  TURBOLINKS !!!
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  $('.bxslider').bxSlider();
};
$(document).on('turbolinks:load', ready);


var currentBackground = 0;
var backgrounds = [];
backgrounds[0] = 'http://res.cloudinary.com/dfc7k24vb/image/upload/q_auto:low/v1477650352/EchtVakantie/theme/Take_a_ride.jpg';
backgrounds[1] = 'http://res.cloudinary.com/dfc7k24vb/image/upload/q_auto:low/v1477650344/EchtVakantie/theme/Camping.jpg';

function changeBackground() {
    currentBackground++;
    if(currentBackground > 1) currentBackground = 0;

    $('.slider').fadeOut(1000,function() {
        $('.slider').css({
            'background-image' : "url('" + backgrounds[currentBackground] + "')"
        });
        $('.slider').fadeIn(1000);
    });


    setTimeout(changeBackground, 5000);
}

$.fn.isOnScreen = function(){

    var win = $(window);

    var viewport = {
        top : win.scrollTop(),
        left : win.scrollLeft()
    };
    viewport.right = viewport.left + win.width();
    viewport.bottom = viewport.top + win.height();

    var bounds = this.offset();
    bounds.right = bounds.left + this.outerWidth();
    bounds.bottom = bounds.top;

    return (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));

};


$(document).ready(function() {
    setTimeout(changeBackground, 5000);
    $('.bxslider').bxSlider({
      auto: true,
      mode: 'fade',
    });
});

$(window).scroll(function() {
  var footer = document.getElementById("footer");

  if ($('#footer').isOnScreen()) {
    if ($('.filter-partial').hasClass('fixed')){
      $('.filter-partial').addClass('bottom');
      $('.filter-partial').removeClass('fixed');
      console.log("bottomed");
    }
  } else {
    $('.filter-partial').addClass('fixed');
    $('.filter-partial').removeClass('bottom');
    console.log("fixed");
  }
})
