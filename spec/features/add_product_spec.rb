require 'rails_helper'
require 'capybara'

feature 'Add product', js: true do

  # create a user
  # let ( :user) { create :user, email: "host@user.com" }
  # create a tempt category

  let! ( :theme ) { create :theme }

  let! ( :vacation1 ) { create :vacation1, themes: [] }
  let! ( :vacation2 ) { create :vacation2, themes: [] }

  scenario 'add a product' do
    visit themes_path

    # fill in the form
    fill_in 'product_name', with: 'Automatic website builder'
    fill_in 'product_description', with: 'The awesome description'
    fill_in 'product_price', with: 10

    within '#product_category_ids' do
      find("option[value='#{category.id}']").click
    end

    attach_file('images_', File.join(Rails.root, '/spec/support/IMG-20160920-WA0005.jpg'))

    # click save
    click_button('Save')

    sleep(10)

    # expect to have a product in the db now
    expect(Product.all.length).to eq(1)


  end
end
