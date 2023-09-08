class MarketsFacade
  def self.get_all_markets
    service = MarketService.new
    raw_markets = service.get_all_markets
    mapped_markets = raw_markets[:data].map do |raw_market|
      MarketsPoro.new(
      id: raw_market[:id],
      name: raw_market[:attributes][:name],
      city: raw_market[:attributes][:city],
      state: raw_market[:attributes][:state],
      street: raw_market[:attributes][:street]
      )
    end
  end

  def self.market_details(market_id)
    service = MarketService.new
    raw_market = service.market_details(market_id)
    market = MarketsPoro.new(id: raw_market[:data][:id],
                            name: raw_market[:data][:attributes][:name],
                            city: raw_market[:data][:attributes][:city],
                            state: raw_market[:data][:attributes][:state],
                            street: raw_market[:data][:attributes][:street]
                            )

  end

  def self.get_market_vendors(market_id)
    service = MarketService.new
    raw_market_vendors = service.get_market_vendors(market_id)
    mapped_market_vendors = raw_market_vendors[:data].map do |vendor|
      MarketVendorPoro.new(
        id: vendor[:id],
        name: vendor[:attributes][:name],
        description: vendor[:attributes][:description],
        contact_name: vendor[:attributes][:contact_name],
        contact_phone: vendor[:attributes][:contact_phone],
        credit_accepted: vendor[:attributes][:credit_accepted]
        )
      end
  end
end