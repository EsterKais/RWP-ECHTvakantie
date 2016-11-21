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

$(document).ready(function() {
    setTimeout(changeBackground, 5000);
    $('.bxslider').bxSlider({
      auto: true,
      mode: 'fade',
    });
});


document.querySelector('.dropContainer').addEventListener('click', function(){
  document.querySelector('.dropContainer').classList.toggle('show');
})
