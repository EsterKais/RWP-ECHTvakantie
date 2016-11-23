class Message < ApplicationRecord
  validates :name, :presence => {message: "Name cannot be blank."}, :length => { :minimum => 2, message: "Name is too short." }, :on => :create
  validates :email, presence: true
  validates :content, :presence => {message: "Message content cannot be blank."}, :length => { :minimum => 2, message: "Message is too short." }, :on => :create
end
