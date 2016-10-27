class Vacation < ApplicationRecord
  has_many :vphotos
  has_and_belongs_to_many :themes


  validates :title, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}

  validates :country, presence: true, length: {maximum: 20}
  validates :region, presence: true, length: {maximum: 20}
  validates :address, presence: true, length: {maximum: 50}

  validates :show, presence: true

  validates :tphotos, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  AVAILABLE_FILTERS = {
    regio: RegionFilter,
    land: CountryFilter,
    prijs: PriceFilter,
  }


  # In controller use following method like so Vacation.filtered("land/Spanje") of Vacation.filtered("prijs/echt-goedkoop")

  def self.filtered(filters)
    # this didn't seem to do anything
    # return self if filters.blank?

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



  def self.search(search)

    where("title ILIKE ? OR country ILIKE ? OR region ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
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
