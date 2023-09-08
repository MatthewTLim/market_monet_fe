require 'rails_helper'

RSpec.describe "Market Index" do

  describe "#index" do
    it "returns all markets listed by there name city and state" do

      visit markets_path

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("District of Columbia")
      expect(page).to have_content("Washington")
    end

    it "when I click the see more info button I am brought to the market show page" do

      visit "/markets"

      click_link "Get more info on 14&U Farmers' Market"

      expect(current_path).to eq("/markets/322458")
    end
  end
end