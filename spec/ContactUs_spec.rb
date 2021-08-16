require 'rails_helper'
describe User do
    describe "Form dropdown", type: :feature do
        it "has the right department options" do
          visit '/index'
          within("select#lead_departement") { expect(page).to have_content("Residential Commercial Corporate Hybrid") }
        end
    end
    describe "Form submit", type: :feature do
      it "submits the form" do
        visit '/index'
        within("#new_lead") do
        find('input[name="lead[full_name]"]').set "Tester"
        find('input[name="lead[email]"]').set "Test@hotmail.com"
        find('input[name="lead[phone_number]"]').set "14185556666"
        find('input[name="lead[company_name]"]').set "TestCompany"
        find('input[name="lead[project_name]"]').set "Test"
        find('input[name="lead[project_description]"]').set "Testing"
        select 'Residential', from: 'lead[departement]'
        find('input[name="lead[message]"]').set "Testing"
        click_button 'SEND MESSAGE'
        expect(page).to have_current_path '/index'
        assert_equal 200, page.status_code
        save_and_open_page
        end
      end
    end
end