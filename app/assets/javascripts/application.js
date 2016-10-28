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
backgrounds[0] = 'http://res.cloudinary.com/unique/image/upload/v1477498791/Nature_k5rz4b.jpg';
backgrounds[1] = 'http://res.cloudinary.com/unique/image/upload/q_76/v1477408102/Water_lsqdam.jpg';

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

$(document).ready(function() {
    setTimeout(changeBackground, 5000);
    $('.dropdown-menu').click(function(){
      $('.header--bottom').slideToggle();
      return false;
    });

});
