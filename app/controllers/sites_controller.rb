class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)

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
    if @site_users.nil? == false
      render 'new'
    else
      @site_user = SiteUser.new
    end

  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    # @service = Service.find(params[:id])
    @site = Site.find(params[:id])
    @site.update(site_params)
    redirect_to site_path(@site)
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
  end

  private

  def site_params
    params.require(:site).permit(:company, :address)
  end

end
