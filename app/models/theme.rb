class Theme < ApplicationRecord

  has_and_belongs_to_many :vacations

  def to_param
    name
  end
end
