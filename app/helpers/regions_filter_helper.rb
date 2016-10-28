module RegionsFilterHelper

  def render_regions_filter_links

    @links = []

    # then we check if there are any at all & generate the right filter path
    if @unique_regions.any?
      @unique_regions.each do |region|
        @links << ("<p>" + link_to( "#{region}", "#{params[:name]}/regio/#{region}" ) + "</p>").html_safe
      end
    end

    return @links
  end
end
