class SubcategoriesController < ApplicationController
  def show
    @ads = Ad.published.where(subcategory_id: params[:id])
  end
end
