require 'rails_helper'
require 'capybara'

feature 'Add vacation', js: true do

  # clean DB first
  before do
    DatabaseCleaner.clean
  end

  # user needs to be logged in to add a vacation
  before { login_as user }
  let ( :user) { create :user, email: "admin@test.com", password: "secret" }

  ################ this should be another to acheive the same ###########
  ##                                                                   ##
  ##   user needs to be logged in to add a vacation                    ##
  ##   user = FactoryGirl.create(:user)                                ##
  ##   login_as(user, :scope => :user)                                 ##
  ##                                                                   ##
  #######################################################################

  # create a tempt category
  let! ( :theme ) { create :theme, name: "Ordesa" }

  scenario 'by filling in the form' do
    visit new_vacation_path

    # fill in the form CHECK FOR THE RIGHT FORM NAMES
    fill_in 'vacation_title', with: "Awesome Mountains and Valley's"


    fill_in 'vacation_country', with: "Nicaragua"
    fill_in 'vacation_region', with: "Ometepe"

    fill_in 'vacation_address', with: Faker::Address.street_address

    # true!
    within 'select#vacation_show' do
      find("option[value='true']").click
    end

    within 'select#vacation_price' do
      find("option[value='3']").click
    end

    within 'select#vacation_theme_ids' do
      find("option[value='1']").click
    end

    fill_in 'vacation_description', with: Faker::Lorem.sentence(40)

    fill_in 'vacation_review', with: Faker::Lorem.sentence(40)

    # element is called vphotos
    attach_file('vphotos_', File.join(Rails.root, '/spec/support/frank-nikes-2.jpg'))

    # make sure the photo is uploaded to cloudinary
    sleep(4)

    # click save
    click_button('Create Vacation')

    # check it out
    sleep(2)

    # expect to have a product in the db now
    expect(Vacation.all.length).to eq(1)
    expect(Vacation.first.title).to eq("Awesome Mountains and Valley's")

  end
end