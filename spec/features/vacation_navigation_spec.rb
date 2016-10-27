require 'rails_helper'
require 'capybara'

feature 'integration tests theme page', js: true do       # this is used when having js::::

  before do
    DatabaseCleaner.clean
  end

  # PIM theme does NOT need a vacation
  let ( :theme1 ) { create :theme, name: "Nuts" }
  let( :vacation1 ) { create :vacation, themes: [theme1], title: "Peanut" }

  #let ( :theme2 ) { create :theme, name: "Apples" }
  #let( :vacation2 ) { create :vacation, themes: [theme2], title: "Golden" }

  it 'navigation to vacation show page' do

    visit vacation_path(vacation1)

    # expecting vacation title
    expect(page).to have_content("Peanut")

  end
end

# click_on  "Themes"
# find(".dropdown-menu").click
# sleep(60)
#
# within ('.header--bottom') do
#   click_on theme1.name
# end

