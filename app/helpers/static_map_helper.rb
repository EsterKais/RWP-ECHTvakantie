module StaticMapHelper

  def static_map_for(vacation, options = {})
    params = {
        :center => [vacation.latitude, vacation.longitude].join(","),
        :zoom => 15,
        :size => "300x300",
        :markers => [vacation.latitude, vacation.longitude].join(","),
        :sensor => true
    }.merge(options)

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}&key=AIzaSyAuyArgWCx6lM7VW8gAxyFhi1bNqexoFcQ", :alt => vacation.title
  end

end