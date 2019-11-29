class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def create
    @material = Material.find(params[:material_id])
    @bid = Bid.new(bid_params)
    authorize @bid
    @bid.material = @material
    @bid.user = current_user
    if @bid.save
      redirect_to material_path(@material)
    else
      render 'materials/show'
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:price)
  end
end
