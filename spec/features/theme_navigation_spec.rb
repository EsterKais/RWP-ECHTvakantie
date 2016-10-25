require 'rails_helper'
require 'capybara'

feature 'integration tests theme page', js: true do       # this is used when having js::::


  # PIM theme does NOT need a vacation
  let ( :theme1 ) { create :theme, name: "Nuts" }
  let ( :theme2 ) { create :theme, name: "Apples" }

  let ( :vacation1 ) { create :vacation1, themes: [theme1], name: "Peanut" }
  let ( :vacation2 ) { create :vacation2, themes: [theme2], name: "Golden" }

  scenario 'add a product' do

    visit themes_path

    click_link "Nuts"

    expect(page).to have_content("Golden")

  end
end
    # # fill in the form
    # fill_in 'product_name', with: 'Automatic website builder'
    # fill_in 'product_description', with: 'The awesome description'
    # fill_in 'product_price', with: 10
    #
    # within '#product_category_ids' do
    #   find("option[value='#{category.id}']").click
    # end
    #
    # attach_file('images_', File.join(Rails.root, '/spec/support/IMG-20160920-WA0005.jpg'))
    #
    # # click save
    # click_button('Save')
    #
    # sleep(10)
    #
    # # expect to have a product in the db now
    # expect(Product.all.length).to eq(1)

