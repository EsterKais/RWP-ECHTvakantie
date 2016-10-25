class Vacation < ApplicationRecord

  has_and_belongs_to_many :themes

  def to_param
    title
  end
end
