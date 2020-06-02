class Admin::SubcategoriesController < ApplicationController
  before_action :set_category

  def new
    @subcategory = Subcategory.new
  end

  def create
    subcategory = @category.subcategories.new(subcategories_params)
    if subcategory.valid?
      subcategory.save
      redirect_to admin_categories_path
    else
      # TODO Сделать вывод ошибки валидации 
      redirect_to admin_categories_path, alert: "Ошибка: #{subcategory.errors.messages}"
    end
  end

  def edit
    @subcategory = @category.subcategories.find(params[:id])
  end

  def update
    @subcategory = @category.subcategories.find(params[:id])
    if @subcategory.update(subcategories_params)
      redirect_to admin_categories_path
    else
      render 'admin/subcategories/edit'
    end
  end

  def destroy
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory.destroy!
    respond_to do |format|
      format.html { redirect_to admin_categories_path, notice: 'Comment was successfully destroyed.' }
    end
  end

  def to_publish
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory.to_publish
    redirect_and_notice
  end

  def to_draft
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory.to_draft
    redirect_and_notice
  end

  def redirect_and_notice
    redirect_to admin_categories_path, notice: 'STATE was successfully updated.'
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def subcategories_params
    params.require(:subcategory).permit(:name, :category_id, :state)
  end
end
