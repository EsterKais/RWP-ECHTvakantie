# require 'rails_helper'
#
# RSpec.describe Vacation, type: :model do
#   describe "validations" do
#
#      it "is invalid without a title" do
#       theme = Vacation.new(title: "")
#       theme.valid?
#       expect(theme.errors).to have_key(:title)
#      end
#
#      it "is invalid without a country" do
#       theme = Vacation.new(country: "")
#       theme.valid?
#       expect(theme.errors).to have_key(:country)
#      end
#
#      it "is invalid without a region" do
#       theme = Vacation.new(region: "")
#       theme.valid?
#       expect(theme.errors).to have_key(:region)
#      end
#
#      it "is invalid without a price" do
#       theme = Vacation.new(price: "")
#       theme.valid?
#       expect(theme.errors).to have_key(:price)
#      end
#
#      it "is invalid without a description" do
#       theme = Vacation.new(description: "")
#       theme.valid?
#       expect(theme.errors).to have_key(:description)
#      end
#
#      it "is invalid without a show" do
#       theme = Vacation.new(show: "")
#       theme.valid?
#       expect(theme.errors).to have_key(:show)
#      end
#
#
#    end
#
# end
