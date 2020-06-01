class Admin::SubcategoriesController < ApplicationController
  before_action :set_category

  def create
    @category.subcategories.create! subcategories_params
    redirect_to admin_categories_path
  end

  def edit
    @category = Category.find(params[:category_id])
    @subcategory = @category.subcategories.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @subcategory = @category.subcategories.find(params[:id])
    redirect_to admin_categories_path


    # if @comment.update(comments_params)
    #   redirect_to post_path(@post)
    # else
    #   render 'edit'
    # end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory.destroy!
    respond_to do |format|
      format.html { redirect_to admin_categories_path, notice: 'Comment was successfully destroyed.' }
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def subcategories_params
    params.require(:subcategory).permit(:name, :category_id)
  end
end
