module CountriesFilterHelper

  def render_countries_filter_links

    @links = []

    # then we check if there are any at all & generate the right filter path
    if @unique_countries.any?
      @unique_countries.each do |country|
          @links << ("<div>" + link_to( "#{country}", "/thema/#{params[:id]}/land/#{country}" ) + "</div>").html_safe
      end
    end

    return @links
  end
end
