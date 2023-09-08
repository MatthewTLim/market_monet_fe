require "rails_helper"

RSpec.describe "Market Facade" do
  before do

    @market_facade = MarketsFacade.get_all_markets
  end

  describe "#get_all_markets" do
    it "returns all markets" do
      expect(MarketsFacade.get_all_markets).to be_an(Array)
      expect(MarketsFacade.get_all_markets.first).to be_a(MarketsPoro)
      expect(MarketsFacade.get_all_markets.first.name).to eq("14&U Farmers' Market")
      expect(MarketsFacade.get_all_markets.first.city).to eq("Washington")
      expect(MarketsFacade.get_all_markets.first.state).to eq("District of Columbia")
    end
  end
end