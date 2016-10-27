module CountriesFilterHelper

  def countries_filter
    @countries = Vacation.distinct(:country).pluck(:country)
    if @countries != []
        @countries.each do |country|
          "<p>" + link_to( "#{country}", "#{params[:name]}/land/#{country}" ) + "</p>"
      end
    end
  end
end
