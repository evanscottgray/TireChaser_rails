class TiresController < ApplicationController
  def new
    @tire = Tire.new
  end

  def create
    @vendor = Vendor.find(params[:vendor_id])
    @tire = @vendor.tires.create(tire_params)
    if @true.save
      redirect_to vendor_path(@vendor)
    else
      render action: :new
    end
  end

  def edit
    @tire = Tire.find(params[:id])
  end

  def update
    @tire = Tire.find(params[:id])
    if
    @tire.update(tire_params)
      redirect to vendor_path(@vendor)
    else render action: :edit
    end
  end

  def show
    @tire = Tire.find(params[:id])
  end


  private
  def tire_params
    params.require(:tire).permit(:model, :brand, :price, :quantity)
  end

end