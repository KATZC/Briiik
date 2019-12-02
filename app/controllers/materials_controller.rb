class MaterialsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def sales
    authorize :material, :sales?
    @user = current_user
    @my_posts = current_user.materials
    @my_posts_online = current_user.materials.where(status: 'En ligne')
    @my_posts_pickup = current_user.materials.where(status: 'Vendu')
    @my_posts_done = current_user.materials.where(status: 'Cloturé')

    # if material.bids.order.any?
    #  @historical_price = current_user.materials.bids.order('price ASC').last&.price
    # else
    # @historical_price = "Non vendu"
    # end
  end

  def index
    if params[:address].present?
      @materials = Material.search_by_category_and_description(params[:address])
    end

    if params[:category].present?
      if @materials.nil?
        @materials = Material.search_by_category_and_description(params[:category])
      else
        @materials = @materials.search_by_category_and_description(params[:category])
      end
    end
    if params[:description].present?
      if @materials.nil?
        @materials = Material.search_by_category_and_description(params[:description])
      else
        @materials = @materials.search_by_category_and_description(params[:description])
      end
    end

    @materials = Material.all if @materials.nil?
    @materials.sort_by { |material| material.highest_bid}
  end

  def show
    @material = Material.find(params[:id])
    @bid = Bid.new
    authorize @material
  end

  def new
    if current_user.sites.any?
      @material = Material.new
      @sites = current_user.sites
      authorize @material
    else
      authorize Site.new
      redirect_to sites_path
    end
  end

  def create
    @material = Material.new(material_params)
    @site_user = SiteUser.find_by(site: @material.site, user: current_user)
    @material.site_user = @site_user
    @material.status = "En ligne"
    authorize @material
    if @material.save
      redirect_to material_path(@material)
    else
      render 'new'
    end
  end

  private

  def material_params
    params.require(:material).permit(:category, :minimum_price, :photo, :deadline, :description, :site_id, :user_id)
  end
end
