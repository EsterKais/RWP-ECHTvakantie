class Vacation < ApplicationRecord
  has_many :vphotos
  
  def to_param
    title
  end
end
