class MaterialsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        materials.category @@ :query \
      "
      @materials = Material.search_by_category(params[:query])


      if params[:query2].present? && params[:query3].present?
        @materials = @materials.select { |material| material.minimum_price < params[:query3].to_i && material.minimum_price > params[:query2].to_i }
      elsif params[:query2].present? && params[:query3].present? == false
        @materials = @materials.select { |material| material.minimum_price > params[:query2].to_i }
      elsif params[:query2].present? == false && params[:query3].present?
        @materials = @materials.select { |material| material.minimum_price < params[:query3].to_i }
      else
      end

    else
      @materials = Material.all
    end

  end

  def show
  end

  def new
  end
end



 # if params[:query4].present?
 #      sql_query = " \
 #        materials.category @@ :query \
 #      "
 #      @materials = Material.search_by_category(params[:query4])


    #                                                          if params[:query].present?
    #   sql_query = " \
    #     materials.description @@ :query \
    #     OR materials.category @@ :query \
    #     OR materials.minimum_price @@ :query \
    #     OR materials.deadline @@ :query \
    #     OR sites.address @@ :query \
    #   "
    #   @materials = Material.joins(:site).where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @materials = Material.all
    # end
