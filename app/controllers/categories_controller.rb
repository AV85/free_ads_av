class CategoriesController < ApplicationController
  def index
    @categories = Category.published.order(name: :asc)
    @ads = Ad.published.order(updated_at: :desc)
  end

  def show
    @category = Category.published.find(params[:id])
    @subcategories = Subcategory.subcategory_published.where(category_id: params[:id])
    @ads = Ad.published.where(subcategory_id: @category.subcategories)
  end
end
