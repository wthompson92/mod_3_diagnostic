require 'rails_helper'


feature "User can search for nearby gas stations by zip code" do
  scenario "When I visit the root path and  I fill in the search form with 80202, Then I should see a list of the 10 closest stations within 6 miles sorted by distance" do
    visit "/"
      fill_in "q", with: 80501
      click_on "Locate"
      expect(current_path).to eq(search_path)
      end

  scenario  "And the stations should be limited to Electric and Propane. And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times " do
    expect(page).to have_content("10 Results")
  end
end
