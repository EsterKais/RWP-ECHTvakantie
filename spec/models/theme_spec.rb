require 'rails_helper'

RSpec.describe Theme, type: :model do

 describe "validations" do

    it "is invalid without a name" do
     theme = Theme.new(name: "")
     theme.valid?
     expect(theme.errors).to have_key(:name)
    end

    it "is invalid without a description" do
     theme = Theme.new(description: "")
     theme.valid?
     expect(theme.errors).to have_key(:description)
    end

    it "is invalid without a style" do
     theme = Theme.new(style: "")
     theme.valid?
     expect(theme.errors).to have_key(:style)
    end

  end


end
