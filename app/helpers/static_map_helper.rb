module StaticMapHelper

  def static_map_for(location, options = {})
    params = {
        :center => [location.lat, location.lng].join(","),
        :zoom => 15,
        :size => "300x300",
        :markers => [location.lat, location.lng].join(","),
        :sensor => true
    }.merge(options)

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}", :alt => location.name
  end

end