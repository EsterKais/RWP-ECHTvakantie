module RegionsFilterHelper

  def render_regions_filter_links

    @links = []

    # then we check if there are any at all & generate the right filter path
    if @unique_regions.any?
      @unique_regions.each do |region|
        @links << ("<div>" + link_to( "#{region}", "/thema/#{params[:id]}/regio/#{region}" ) + "</div>").html_safe
      end
    end

    return @links
  end
end
