class Vphoto < ApplicationRecord
  belongs_to :vacation
  mount_uploader :image, ImageUploader
end
