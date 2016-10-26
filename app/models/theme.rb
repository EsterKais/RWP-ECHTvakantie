class Theme < ApplicationRecord
  has_many :tphotos
  has_and_belongs_to_many :vacations

  validates :tphotos, presence: true

  def to_param
    name
  end
end
