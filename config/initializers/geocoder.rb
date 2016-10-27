# config/initializers/geocoder.rb
Geocoder.configure(

    # # to use an API key:
    # :api_key => "",

    # geocoding service request timeout, in seconds (default 3):
    :timeout => 10,

    # set default units to kilometers:
    :units => :km,

)