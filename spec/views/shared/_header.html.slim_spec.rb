# require 'rails_helper'
#
# describe "shared/_header.html.slim" do
#   context "theme vacation" do
#
#     # PIM theme does NOT need a vacation
#     let!( :theme1 ) { create :theme, name: "Nuts" }
#     let!( :theme2 ) { create :theme, name: "Apples" }
#
#     let!( :vacation1 ) { create :vacation, themes: [theme1], title: "Peanut" }
#     let!( :vacation2 ) { create :vacation, themes: [theme2], title: "Golden" }
#
#     it 'navigation to themes show page' do
#
#       # undefined method .each for nil class
#       render
#       expect(rendered).to have_content("Nuts")
#
#     end
#   end
# end
#
