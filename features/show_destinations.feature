Feature: Show destinations 
  As a user
  So that I can easily find destinations
  I want to be able to find a list of destinations
  
Scenario: As a user I want to be able to see a list of destinations
  Given I am on the home page
  When I click on the "List of Destinations" link
  Then I should be on the "destinations" page
  When I click on the "New Destination" link
  Then I should be on the "New Destination" page
  And I should see the "Country" field
  And I should see the "City" field