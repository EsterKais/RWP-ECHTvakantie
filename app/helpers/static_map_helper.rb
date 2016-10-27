module StaticMapHelper

  def static_map_for(vacation, options = {})
    params = {
        :center => [vacation.latitude, vacation.longitude].join(","),
        :zoom => 10,
        :size => "1600x250",
        :markers => [vacation.latitude, vacation.longitude].join(","),
        :sensor => true
    }.merge(options)

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}&key=AIzaSyAuyArgWCx6lM7VW8gAxyFhi1bNqexoFcQ"
  end

end