require 'rails_helper.rb'

feature "Visitor visits the list of destination page" do
    scenario "Vistor successfully navigate to the Listing Destinations page from the welcome page" do
        visit root_path
        expect(page).to have_content("TripTastic")
        click_link "Destinations"
        expect(page).to have_content("Destinations Around The World Are Just A Click Away")
    end
end