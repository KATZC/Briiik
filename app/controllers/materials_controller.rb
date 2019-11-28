class MaterialsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def sales
    authorize :material, :sales?
    @user = current_user
    @my_posts = current_user.materials.limit(2)
    @my_posts_pickup = current_user.materials.where(status: 'Vendu').limit(2)
    @my_posts_done = current_user.materials.where(status: 'Cloturé').limit(2)
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
  end

  def new
    @material = Material.new
    @sites = current_user.sites
    authorize @material
  end

  def create
    @user = current_user
    @site = Site.find(params[:site_id])
    @material = Material.new(material_params)
    @site_user.site = @site
    authorize @site_user

    if @site_user.save
      redirect_to site_path(@site)
    else
      render 'new'
    end
  end

  private

  def material_params
    params.require(:material).permit(:category, :minimum_price, :photo, :deadline, :description)
  end

end


