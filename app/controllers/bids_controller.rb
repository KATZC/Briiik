class BidsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @bids = Bid.all
    authorize :bid, :index?
    @user = current_user
    @my_bids_pending = @user.bidden_materials.where(status: 'En ligne').order(deadline: :asc)
    @my_bids_pickup = @user.bidden_materials.where(status: 'Vendu').select do |material|
      material.highest_bid == material.highest_bid_user(current_user)
    end
    @my_bids_winsale = @user.bidden_materials.where(status: 'Cloturé').select do |material|
      material.highest_bid == material.highest_bid_user(current_user)
    end
    @my_bids_lostsale = @user.bidden_materials.where(status: 'Cloturé' || 'Vendu').select do |material|
      material.highest_bid > material.highest_bid_user(current_user)
    end

    # à supprimer
    # @user.bids.materials.where(@user.bids.any? &&material.status: 'En ligne')
    # @my_bids_pickup = @user.bids.materials.where(@user.bids == material.higest &&material.status: 'Vendu')
    # @my_bids_winsale = @user.materials.where(@user.bids == material.higest &&material.status: 'Cloturé')
    # @my_bids_lostsale = @user.materials.where(@user.bids < material.higest &&material.status: 'Cloturé')

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
