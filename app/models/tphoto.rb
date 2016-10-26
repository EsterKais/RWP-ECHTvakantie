class Tphoto < ApplicationRecord
  belongs_to :theme
  mount_uploader :image, ImageUploader
end
