class MarketVendorPoro
  attr_reader :contact_name, :contact_phone, :description, :credit_accepted, :name, :id

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @contact_name = attributes[:contact_name]
    @contact_phone = attributes[:contact_phone]
    @description = attributes[:description]
    @credit_accepted = attributes[:credit_accepted]
  end
end