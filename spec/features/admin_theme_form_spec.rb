require 'rails_helper'
require 'capybara'

feature 'Add a theme', js: true do
  # user needs to be logged in to add a vacation
  # before { login_as user }

  # user needs to be logged in to add a vacation
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user)


  # create a tempt category

  scenario 'by filling in the form' do
    visit new_theme_path

    # fill in the form CHECK FOR THE RIGHT FORM NAMES
    fill_in 'theme_name', with: "Awesome Sauce"
    fill_in 'theme_description', with: Faker::Lorem.sentence(40)
    fill_in 'theme_type', with: Faker::Internet.name

    attach_file('photos_', File.join(Rails.root, '/spec/support/IMG-20160920-WA0005.jpg'))

    # click save
    click_button('Save')

    sleep(10)

    # expect to have a product in the db now
    expect(Theme.all.length).to eq(1)
    expect(Theme.first.name).to eq("Awesome Sauce")

  end
end