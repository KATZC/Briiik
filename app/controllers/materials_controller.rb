class MaterialsController < ApplicationController
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
  end
end

