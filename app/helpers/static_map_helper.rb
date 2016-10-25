module StaticMapHelper

  def static_map_for(vacation, options = {})
    params = {
        :center => [vacation.latitutde, vacation.longitude].join(","),
        :zoom => 15,
        :size => "300x300",
        :markers => [vacation.latitude, vacation.longitude].join(","),
        :sensor => true
    }.merge(options)

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}", :alt => vacation.name
  end

end