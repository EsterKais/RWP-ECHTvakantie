require 'rails_helper'
require 'capybara'

feature 'Add a theme', js: true do
  # user needs to be logged in to add a vacation
  before { login_as user }

  # create a user
  let ( :user) { create :user, email: "admin@test.com", password: "secret" }

 ################ this should be another to acheive the same ###########
 ##                                                                   ##
 ##   user needs to be logged in to add a vacation                    ##
 ##   user = FactoryGirl.create(:user)                                ##
 ##   login_as(user, :scope => :user)                                 ##
 ##                                                                   ##
 #######################################################################

  scenario 'by filling in the form' do
    visit new_theme_path

    # fill in the form CHECK FOR THE RIGHT FORM NAMES
    fill_in 'theme_name', with: "Awesome Sauce"
    fill_in 'theme_description', with: Faker::Lorem.sentence(40)

    # attach_file('images_', File.join(Rails.root, '/spec/support/frank-nikes-2.jpg'))
    # sleep(10)

    # click save
    click_button('Create Theme')

    # expect to have a product in the db now
    expect(Theme.all.length).to eq(1)
    expect(Theme.first.name).to eq("Awesome Sauce")

  end
end