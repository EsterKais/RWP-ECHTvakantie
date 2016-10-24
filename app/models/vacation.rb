class Vacation < ApplicationRecord
  def to_param
    title
  end
end
