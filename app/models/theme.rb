class Theme < ApplicationRecord
  has_many :tphotos
  has_and_belongs_to_many :vacations

  accepts_nested_attributes_for :tphotos, reject_if: :all_blank?

  validates :tphotos, presence: true

  def to_param
    name
  end
end
