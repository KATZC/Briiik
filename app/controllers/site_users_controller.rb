
class SiteUsersController < ApplicationController
  def new
    @user = User.where(email: params[:query])
    Site.find(params[:site_id])
    @site_user = SiteUser.new
    render 'index'
  end

  def index
    @user = User.where(email: params[:query])
    site = Site.find(params[:site_id])
    @site_users = SiteUser.where(site_id: params[:site_id])
  end

  def create
    @site = Site.find(params[:site_id])
    @site_user = SiteUser.new(site_user_params)
    @site_user.site = @site
    authorize @site_user

    if @site_user.save
      redirect_to site_path(@site)
    else
      render 'new'
    end
  end

  def show
    @site_user = SiteUser.where(site_id: params[:id])
  end

  private

  def site_user_params
    params.require(:site_user).permit(:user_id)
  end
end
