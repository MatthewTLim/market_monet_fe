class MarketService

  def get_all_markets
    get_url("/api/v0/markets")
  end

  def market_details(market_id)
    get_url("/api/v0/markets/#{market_id}")
  end

  def get_market_vendors(market_id)
    get_url("/api/v0/markets/#{market_id}/vendors")
  end

  def vendor_details(vendor_id)
    get_url("/api/v0/vendors/#{vendor_id}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://localhost:3000/" )
  end
end