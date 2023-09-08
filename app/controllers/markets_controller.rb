class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.get_all_markets
  end

  def show
    @market_id = params[:id]
    @market = MarketsFacade.market_details(@market_id)
    @market_vendors = MarketsFacade.get_market_vendors(@market_id)
  end
end