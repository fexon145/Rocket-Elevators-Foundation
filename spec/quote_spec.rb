require 'rails_helper'
describe Quote do
    describe "Filling Quote Form", type: :feature do
        it "Has the right options in the dropdown and displays the right fields" do
          visit '/quote'
          within("select#buildingType") { expect(page).to have_content("Residential Commercial Corporate Hybrid") }
          select 'Residential', from: 'quotes[name]'
          expect(page).to have_content("Number of apartments in the building?")
          expect(page).to have_content("Number of floors in the building, exluding basements?")
          expect(page).to have_content("Number of Basements contained in the building?")
        end
    end
end