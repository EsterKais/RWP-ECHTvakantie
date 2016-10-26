class Vacation < ApplicationRecord
  has_many :vphotos
  has_and_belongs_to_many :themes

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  AVAILABLE_FILTERS = {
    regio: RegionFilter,
    # prijs: PriceFilter,
    # search: SearchFilter,
  }


  # In controller use following method like so Vacation.filtered("land/Spanje") of Vacation.filtered("prijs/echt-goedkoop")

  def self.filtered(filters)
    return self if filters.blank?

    results = self

    filters.split("/").in_groups_of(2) do |filter|
      type, value = filter
      if AVAILABLE_FILTERS.keys.include?(type.to_sym)
        filter = AVAILABLE_FILTERS[type.to_sym].new(value, results)
        results = filter.results
      end
    end

    results
  end


  def to_param
    title
  end



  # PIM working here down::::
  # def by_title
  #   self.sort { |a,b| a.title.downcase <=> b.title.downcase }
  # end
  #
  # def by_created_at
  #   order(:created_at)
  # end
  #
  # def by_price
  #   order(:price)
  # end
  #
  # def by_country
  #   order(:country)
  # end
  #
  # def by_location
  #   order(:location)
  # end
  #
  # def by_address
  #   order(:address)
  # end
end
