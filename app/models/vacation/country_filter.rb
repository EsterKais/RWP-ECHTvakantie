class Vacation::CountryFilter
  def initialize(value, results)
    @results = results

    country = Vacation.distinct(:country).pluck(:country).
      select{|r| r.parameterize == value.parameterize }.first
    return if country.blank?

    @country = country
  end

  def results
    @results.where(country: @country)
  end
end
