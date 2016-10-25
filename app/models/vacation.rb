class Vacation < ApplicationRecord
  has_many :vphotos
  has_and_belongs_to_many :themes

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  def to_param
    title
  end



  # PIM working here down::::
  def by_title
    self.sort { |a,b| a.title.downcase <=> b.title.downcase }
  end

  def by_created_at
    order(:created_at)
  end

  def by_price
    order(:price)
  end

  def by_country
    order(:country)
  end

  def by_location
    order(:location)
  end

  def by_address
    order(:address)
  end
end
