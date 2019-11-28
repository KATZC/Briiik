class BidsController < ApplicationController
  def index
    @bids = Bid.all
    @bids = Bid.where(material_id: params[:id])
  end
end
