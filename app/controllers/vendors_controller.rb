class VendorsController < ApplicationController
  before_filter :disable_layout, only: [:order_rate, :order_price]

  def index
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to vendor_path @vendor
    else
      render action: :new
    end
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def search_by_tire
  end

  def search_by_car
  end

  def order_rate

  end

  def order_price

  end

  private

  def disable_layout
    render layout: false
  end

  def vendor_params
    params.require(:vendor).permit(:name, :address)
  end

end
