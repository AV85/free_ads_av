class Admin::CategoriesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_category, only: %i[show edit update destroy to_publish to_draft]

  def index
    @categories = Category.order(id: :asc)
  end

  def show; end

  def new
    @category = Category.new
  end

  def edit; end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_categories_path, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to admin_categories_path, notice: 'Category was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
    end
  end

  def to_publish
    @category.to_publish
    redirect_and_notice
  end

  def to_draft
    @category.to_draft
    redirect_and_notice
  end

  def redirect_and_notice
    redirect_to admin_categories_path, notice: 'STATE was successfully updated.'
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:icon, :name, :description, :state)
  end
end