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

var mapStyle = [{"featureType":"administrative","stylers":[{"visibility":"off"}]},{"featureType":"poi","stylers":[{"visibility":"simplified"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"simplified"}]},{"featureType":"water","stylers":[{"visibility":"simplified"}]},{"featureType":"transit","stylers":[{"visibility":"simplified"}]},{"featureType":"landscape","stylers":[{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"visibility":"off"}]},{"featureType":"road.local","stylers":[{"visibility":"on"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"water","stylers":[{"color":"#84afa3"},{"lightness":52}]},{"stylers":[{"saturation":-17},{"gamma":0.36}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"color":"#3f518c"}]}]

google.maps.event.addDomListener(window, 'load', function() {

    var mapDiv = $('#map_canvas');
    var lat = mapDiv.data('latitude'),
        lng = mapDiv.data('longitude');

    var myLatLng = {lat: lat, lng: lng};

    var map = new google.maps.Map(document.getElementById('map_canvas'), {
        styles: mapStyle,
        zoom: 4,
        center: myLatLng,
        streetViewControl: false,
        zoomControl: true,
        mapTypeControlOptions: {
            mapTypeIds: ['coordinate', 'roadmap']
        }
    });

    var image = 'http://res.cloudinary.com/pvdh/image/upload/c_scale,w_40/v1479735292/favicon-3bd077080faeac470e2f206ff737e1d6b5950307d89730e8dfec733525f49a30_bdnp1p.png'

    window.setTimeout(function() {
        new google.maps.Marker({
            icon: image,
            title: $('#vacation-title').toString(),
            position: myLatLng,
            map: map,
            animation: google.maps.Animation.DROP
        });
    }, 2500);
});

