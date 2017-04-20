require 'rails_helper.rb'

feature "Visitor visits the list of destination page" do
    scenario "Vistor successfully navigate to the Listing Destinations page from the welcome page" do
        visit root_path
        expect(page).to have_content("TripTastic")
        click_link "Destination"
        expect(page).to have_content("Current Destination")
    end
    
end