require 'rails_helper.rb'

feature "Vistor creates new account" do
    scenario "Vistor successfully navigate to the Sign up page from the Welcome page" do
        visit root_path
        expect(page).to have_content("TripTastic")
        click_link "Signup"
        expect(page).to have_content("Sign up")
        expect(page).to have_field("Email")
        expect(page).to have_field("Password")
    end
    
    scenario "Vistor successfully creates a new account" do
        visit signup_path
        expect(page).to have_content("Sign up")
        fill_in "Email", with: "rspec@rspec.com"
        fill_in "Password", with: "rspec123"
        click_button "Create an account"
        expect(page).to have_content("TripTastic")
        expect(page).to have_content("rspec@rspec.com")
    end
    
    scenario "Visitor can create a destination" do
    visit root_path 
    expect(page).to have_content("TripTastic")
    click_link "Create Destination"
    fill_in "Country", with: "Merica"
    fill_in "City", with: "RspecPotato"
    click_button "Save Destination"
    end
    
end