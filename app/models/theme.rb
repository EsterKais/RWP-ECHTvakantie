class Theme < ApplicationRecord
  def to_param
    name
  end
end
