class Theme < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :tphotos, dependent: :destroy
  has_and_belongs_to_many :vacations

  accepts_nested_attributes_for :tphotos, reject_if: :all_blank?

  # don't validate photos please!
  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}
end
