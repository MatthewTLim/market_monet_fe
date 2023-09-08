class MarketsPoro
  attr_reader :name, :city, :state, :id, :street

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @city = attributes[:city]
    @state = attributes[:state]
    @street = attributes[:street]
  end
end