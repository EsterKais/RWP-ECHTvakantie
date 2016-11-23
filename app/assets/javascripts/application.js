//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$.fn.isOnScreen = function(){

    var win = $(window);
    var viewport = {top : win.scrollTop(),left : win.scrollLeft()};
    viewport.right = viewport.left + win.width();
    viewport.bottom = viewport.top + win.height();

    var bounds = this.offset();
    bounds.right = bounds.left + this.outerWidth();
    bounds.bottom = bounds.top;

    return (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));

};


$(document).on('turbolinks:load', function(){

    if ( $('.notice').text().length > 0 ){
    $('.notice').text('')
  }
  // // CONTACT FORM
  // $('.reset').click(function(){
  //   $('.contact-model .field input').val('');
  //   $('.contact-model .field textarea').val('');
  // });


  // $(".check-form").blur(function() {
  //   if( !$(this).val() ) {
  //         $(this).addClass('warning');
  //   };
  // });




  // EURO SIGNS
  $('.vl-price').ready(function(){
    $('.vl-price').text(function(){
      return $(this).text().replace('laag', '€').replace('midden', '€€').replace('hoog', '€€€');
    });
  });


  var footer = document.getElementById("footer");

  $(window).scroll(function(){
    if ($('#footer').isOnScreen()) {
      if ($('.filter-partial').hasClass('fixed')){
        $('.filter-partial').addClass('bottom');
        $('.filter-partial').removeClass('fixed');
      }
    } else {
      $('.filter-partial').addClass('fixed');
      $('.filter-partial').removeClass('bottom');
    }
  });


  $('.header--bottom').click(function(){
    if ($('.header--bottom ul').hasClass("active")){
      $('.header--bottom ul').removeClass("active");
    } else {
      $('.header--bottom ul').addClass("active");
    }
  });

  $('.filter-dropdown').hover(function(){
    if ($(this).hasClass("active")){
      $(this).removeClass("active");
    } else {
      $(this).addClass("active");
    }
  });

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


  // here come the maps

    if ( document.location.pathname.indexOf("/vakantie/") == 0 ) {

        var mapStyle = [{
            "featureType": "administrative",
            "elementType": "labels.text.fill",
            "stylers": [{"color": "#6195a0"}]
        }, {
            "featureType": "landscape",
            "elementType": "all",
            "stylers": [{"color": "#f2f2f2"}]
        }, {
            "featureType": "landscape",
            "elementType": "geometry.fill",
            "stylers": [{"color": "#ffffff"}]
        }, {"featureType": "poi", "elementType": "all", "stylers": [{"visibility": "off"}]}, {
            "featureType": "poi.park",
            "elementType": "geometry.fill",
            "stylers": [{"color": "#e6f3d6"}, {"visibility": "on"}]
        }, {
            "featureType": "road",
            "elementType": "all",
            "stylers": [{"saturation": -100}, {"lightness": 45}, {"visibility": "simplified"}]
        }, {
            "featureType": "road.highway",
            "elementType": "all",
            "stylers": [{"visibility": "simplified"}]
        }, {
            "featureType": "road.highway",
            "elementType": "geometry.fill",
            "stylers": [{"color": "#f4d2c5"}, {"visibility": "simplified"}]
        }, {
            "featureType": "road.highway",
            "elementType": "labels.text",
            "stylers": [{"color": "#4e4e4e"}]
        }, {
            "featureType": "road.arterial",
            "elementType": "geometry.fill",
            "stylers": [{"color": "#f4f4f4"}]
        }, {
            "featureType": "road.arterial",
            "elementType": "labels.text.fill",
            "stylers": [{"color": "#787878"}]
        }, {
            "featureType": "road.arterial",
            "elementType": "labels.icon",
            "stylers": [{"visibility": "off"}]
        }, {"featureType": "transit", "elementType": "all", "stylers": [{"visibility": "off"}]}, {
            "featureType": "water",
            "elementType": "all",
            "stylers": [{"color": "#eaf6f8"}, {"visibility": "on"}]
        }, {"featureType": "water", "elementType": "geometry.fill", "stylers": [{"color": "#eaf6f8"}]}]

        var mapDiv = $('#map_canvas');
        var lat = mapDiv.data('latitude'),
            lng = mapDiv.data('longitude');

        mapDiv.css("height", "300");

        var myLatLng = {lat: lat, lng: lng};

        var map = new google.maps.Map(document.getElementById('map_canvas'), {
            styles: mapStyle,
            zoom: 4,
            center: myLatLng,
            streetViewControl: false,
            zoomControl: true,
            mapTypeControl: false,
        });

        var image = 'http://res.cloudinary.com/pvdh/image/upload/c_scale,w_40/v1479735292/favicon-3bd077080faeac470e2f206ff737e1d6b5950307d89730e8dfec733525f49a30_bdnp1p.png'

        window.setTimeout(function () {
            new google.maps.Marker({
                icon: image,
                title: $('#vacation-title').toString(),
                position: myLatLng,
                map: map,
                animation: google.maps.Animation.DROP
            });
        }, 3500);
    }
})
