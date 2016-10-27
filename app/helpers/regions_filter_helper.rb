module RegionsFilterHelper

  def regions_filter
    @regions = Vacation.distinct(:region).pluck(:region)
    if @regions != []
      @regions.each do |region|
        "<p>" +  link_to( "#{region}", "#{params[:name]}/land/#{region}" ) + "</p>"
      end
    end
  end
end
