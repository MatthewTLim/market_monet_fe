class VendorsController < ApplicationController
  def index
  end

  def show
    @vendor_id = params[:id]
    @vendor = VendorsFacade.vendor_details(@vendor_id)
  end
end