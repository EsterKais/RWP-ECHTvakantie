class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :content, presence: true
end
