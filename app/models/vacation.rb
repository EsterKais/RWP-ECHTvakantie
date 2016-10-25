class Vacation < ApplicationRecord
  has_many :vphotos
  has_and_belongs_to_many :themes

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  def to_param
    title
  end



  def self.order_by_name
    order(:name)
  end

  def self.order_by_country
    order(:country)
  end

  def self.order_by_location
    order(:location)
  end

  def self.order_by_price
    order(:price)
  end
end
