class SubcategoriesController < ApplicationController
  def show
    @ads = Ad.where(subcategory_id: params[:id])
  end
end
