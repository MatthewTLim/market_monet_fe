class VendorsFacade
  def self.vendor_details(vendor_id)
    service = MarketService.new
    raw_vendor = service.vendor_details(vendor_id)

    vendor = MarketVendorPoro.new(
      id: raw_vendor[:data][:id],
      name: raw_vendor[:data][:attributes][:name],
      description: raw_vendor[:data][:attributes][:description],
      contact_name: raw_vendor[:data][:attributes][:contact_name],
      contact_phone: raw_vendor[:data][:attributes][:contact_phone],
      credit_accepted: raw_vendor[:data][:attributes][:credit_accepted]
    )
  end
end
