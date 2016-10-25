require 'rails_helper'
require 'capybara'

feature 'Search product', js: true do

  let! ( :user ) { create :user, email: "some@email.com" }
  let! ( :profile ) { create :profile, user: user }
  let! ( :product ) { create :product, name: "How to build a website", user: user }
  let!( :category ) { create :category, name: "A category", products: [product] }

  scenario 'search a product' do
    visit root_path

    click_link("Search")
    within("#search_form") do
      fill_in 'search', with: 'build'
    end
    sleep(1)
    click_button('submit_search')
    sleep(1)
    expect(page).to have_content("How to build a website")

  end
end
