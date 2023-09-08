require 'rails_helper'

RSpec.describe "Vendor Show" do

  describe "#Show" do
    it "shows the Vendors name, address, and list of vendors" do
      visit "/markets/322458"

      click_link "Claudie Langworth III"
      save_and_open_page
      expect(current_path).to eq("/vendors/55823")

      expect(page).to have_content("The Charcuterie Corner")
      expect(page).to have_content("Claudie Langworth III")
      expect(page).to have_content("1-147-179-9747")
      expect(page).to have_content("false")
      expect(page).to have_content("Vendor selling a variety of artisanal cured meats and sausages.")
    end
  end
end