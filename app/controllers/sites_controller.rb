class SitesController < ApplicationController
  before_action :set_site, only: %i(show edit update destroy records)

  def index
    @sites = Site.all
    @sites = policy_scope(Site)
    @user = current_user
    @site_users = SiteUser.where(user_id: @user.id)
  end

  def new
    @site = Site.new
    authorize @site
  end

  def create
    @site = Site.new(site_params)
    authorize @site

    if @site.save
      SiteUser.create(user: current_user, site: @site, manager: true)
      redirect_to site_path(@site)
    else
      render 'new'
    end
  end

  def show
    @site = Site.find(params[:id])
    @site_users = @site.users
    @site_user = SiteUser.new
    @users = User.all - @site_users
  end

  def edit
  end

  def update
    # @service = Service.find(params[:id])
    @site.update(site_params)
    redirect_to site_path(@site)
  end

  def destroy
    @site.destroy
  end


  def map
    @flats = Flat.geocoded #returns flats with coordinates

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end

  def records
    @user = current_user
    @my_posts_pickup = @user.materials.where(status: 'Vendu', site_id: params[:id])
    @my_posts_done = @user.materials.where(status: 'Cloturé', site_id: params[:id])
    a = []
    b = []
    @my_posts_pickup.each do |x|
      a << x.highest_bid
    end
    @my_posts_done.each do |y|
      b << y.highest_bid
    end
    @sum = a.sum + b.sum

  end

  private

  def set_site
    @site = Site.find(params[:id])
    authorize @site
  end

  def site_params
    params.require(:site).permit(:company, :address)
  end
end
