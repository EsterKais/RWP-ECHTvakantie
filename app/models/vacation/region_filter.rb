class Vacation::RegionFilter
  def initialize(value, results)
    @results = results

    region = Vacation.distinct(:region).pluck(:region).
      select{|r| r.parameterize == value.parameterize }.first
    return if region.blank?

    @region = region
  end

  def results
    @results.where(region: @region)
  end
end
