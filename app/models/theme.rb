class Theme < ApplicationRecord
  has_many :tphotos
  
  def to_param
    name
  end
end
