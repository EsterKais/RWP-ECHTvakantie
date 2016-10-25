require 'rails_helper'
require 'capybara'

# add product to shopping cart -> shopping-cart-page ->  results

feature 'Add product to cart', js: true do

  before do
    DatabaseCleaner.clean
  end

  let ( :user ) { create :user, email: "some@email.com" }
  let! ( :profile ) { create :profile, user: user }
  let! ( :product ) { create :product, name: "Some product", user: user, categories: [category] }
  let ( :category ) {create :category, name: "A category"}

  scenario "add to cart" do

    visit product_path(product.id)
    sleep(2)
    click_on("add-to-cart")
    sleep(2)

    expect(page).to have_content('Some product')
    expect(page).to have_content('Empty Cart')
    expect(page).to have_content('Order')

  end
end
