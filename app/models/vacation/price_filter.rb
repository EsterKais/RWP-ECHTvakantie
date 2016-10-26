class Vacation::PriceFilter
  def initialize(value, results)
    @results = results

    price = Vacation.distinct(:price).pluck(:price).
      select{|r| r.parameterize == value.parameterize }.first
    return if price.blank?

    @price = price
  end

  def results
    @results.where(price: @price)
  end
end
