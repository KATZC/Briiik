class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    @site.save
  end

  def show
    @site = Site.find(params[:id])
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

  private

  def site_params
    params.require(:site).permit(:company, :address)
  end

end
