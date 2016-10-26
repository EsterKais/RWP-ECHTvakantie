# config/initializers/geocoder.rb
Geocoder.configure(

    # to use an API key:
    :api_key => "AIzaSyAuyArgWCx6lM7VW8gAxyFhi1bNqexoFcQ",

    # geocoding service request timeout, in seconds (default 3):
    :timeout => 6,

    # set default units to kilometers:
    :units => :km,

)