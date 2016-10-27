module RegionsFilterHelper

  def regions_filter
    @regions = Vacation.distinct(:region).pluck(:region)

    html = []

    if @regions != []
      @regions.each do |region|
        html << ("<p>" +  link_to( "#{region}", "#{params[:name]}/land/#{region}" ) + "</p>")
      end
    end

    return html
  end
end
