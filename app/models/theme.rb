class Theme < ApplicationRecord
  has_many :tphotos
  has_and_belongs_to_many :vacations
  
  def to_param
    name
  end
end
