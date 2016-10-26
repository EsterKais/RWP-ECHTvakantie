require 'rails_helper'
require 'capybara'

feature 'Add vacation', js: true do
  # user needs to be logged in to add a vacation
  before { login_as user }

  # create a user
  let ( :user) { create :user, email: "host@user.com" }
  # create a tempt category
  let! ( :theme ) { create :theme, title: "Ordesa" }

  scenario 'add a product' do
    visit new_vacation_path

    # fill in the form CHECK FOR THE RIGHT FORM NAMES
    fill_in 'vacation_title', with: "Awesome Mountains and Valley's"
    fill_in 'vacation_description', with: { Faker::Lorem.sentence(40) }
    fill_in 'vacation_price', with: "€€€"

    within '#vacation_themes_ids' do
      find("option[value='#{theme.id}']").click
    end

    attach_file('images_', File.join(Rails.root, '/spec/support/IMG-20160920-WA0005.jpg'))

    # click save
    click_button('Save')

    sleep(10)

    # expect to have a product in the db now
    expect(Vacation.all.length).to eq(1)
    expect(Vacation.first.title).to eq("Awesome Mountains and Valley's")

  end
end