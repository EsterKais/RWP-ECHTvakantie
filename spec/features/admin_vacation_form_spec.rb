require 'rails_helper'
require 'capybara'

feature 'Add vacation', js: true do

  # clean DB first
  before do
    DatabaseCleaner.clean
  end

  # user needs to be logged in to add a vacation
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user)


  # create a tempt category
  let! ( :theme ) { create :theme, title: "Ordesa" }

  scenario 'by filling in the form' do
    visit new_vacation_path

    # fill in the form CHECK FOR THE RIGHT FORM NAMES
    fill_in 'vacation_title', with: "Awesome Mountains and Valley's"
    fill_in 'vacation_description', with: Faker::Lorem.sentence(40)
    fill_in 'vacation_price', with: "€€€"

    fill_in 'vacation_country', with: "Nicaragua"
    fill_in 'vacation_region', with: "Ometepe"

    fill_in 'vacation_review', with: Faker::Lorem.sentence(40)
    fill_in 'vacation_show', with: true

    within '#vacation_themes_ids' do
      find("option[value='#{theme.id}']").click
    end

    attach_file('photos_', File.join(Rails.root, '/spec/support/frank-nikes-2.jpg'))

    # click save
    click_button('Save')

    sleep(10)

    # expect to have a product in the db now
    expect(Vacation.all.length).to eq(1)
    expect(Vacation.first.title).to eq("Awesome Mountains and Valley's")

  end
end