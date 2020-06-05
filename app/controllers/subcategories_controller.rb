class SubcategoriesController < ApplicationController
  def show
    @ads = Ad.where(subcategory_id: params[:id])
    @subcategory = Subcategory.find(params[:id])
  end
end
