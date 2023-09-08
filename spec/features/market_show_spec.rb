require 'rails_helper'

RSpec.describe "Market Show" do

  describe "#Show" do
    it "shows the markets name, address, and list of vendors" do

      visit "/markets"

      click_link "Get more info on 14&U Farmers' Market"

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("1400 U Street NW Washington, District of Columbia")
      expect(page).to have_content("Claudie Langworth III")
      expect(page).to have_content("1-147-179-9747")
      expect(page).to have_content("1-147-179-9747")
      expect(page).to have_content("false")

    end

    it "when I click vendor name link I am brought to the vendor show page" do

      visit "/markets/322458"

      click_link "Claudie Langworth III"

      expect(current_path).to eq("/vendors/55823")
    end
  end
end