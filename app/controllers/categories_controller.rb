class CategoriesController < ApplicationController
  def index
    @categories = Category.published.order(name: :asc)
  end

  def show
    @category = Category.published.find(params[:id])
    @subcategories = Subcategory.subcategory_published.where(category_id: params[:id])
    @ads = Ad.all
  end
end
