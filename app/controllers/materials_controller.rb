class MaterialsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def sales
    authorize :material, :sales?
    @user = current_user
    @my_posts = current_user.materials
    @my_posts_online = current_user.materials.where(status: 'En ligne').order(deadline: :asc)
    @my_posts_pickup = current_user.materials.where(status: 'Vendu')
    @my_posts_done = current_user.materials.where(status: 'Cloturé')


    # A voir avec TA
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
    @materials = @materials.order(deadline: :asc)
    @total_result = @materials.where(status: 'En ligne').count
  end

  def show
    @material = Material.find(params[:id])
    @bid = Bid.new
    @material.price = @material.highest_bid
    # deadline_show
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
      flash[:notice] = "Votre équipement a bien été ajouté"
      redirect_to material_path(@material)
    else
      render 'new'
    end
  end

  private

  def material_params
    params.require(:material).permit(:category, :minimum_price, :photo, :deadline, :description, :site_id, :user_id)
  end

  # def deadline_show
  #   diff = (@material.deadline - Time.zone.now).to_i
  #   diff_format = diff.fdiv(3600 * 24)
  #   if diff_format.positive? && diff_format < 1
  #     @deadline_text = "H - #{diff / 3600} heures"
  #   elsif diff > 1
  #     @deadline_text = "J - #{diff_format.to_i} jours"
  #   else
  #     @deadline = "Terminée"
  #   end
  # end
end
