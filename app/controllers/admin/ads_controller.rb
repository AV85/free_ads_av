class Admin::AdsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ad, only: %i[show edit update destroy]

  def index
    @ads = Ad.order(id: :desc).page params[:page]
  end

  def show; end

  def new
    @ad = Ad.new
  end

  def edit; end

  def create
    @ad = Ad.new(ad_params)

    respond_to do |format|
      if @ad.save
        format.html { redirect_to admin_ads_path, notice: 'Ad was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to admin_ads_path, notice: 'Ad was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to admin_ads_path, notice: 'Ad was successfully destroyed.' }
    end
  end

  def to_publish
    @ad.to_publish
    redirect_and_notice
  end

  def to_draft
    @ad.to_draft
    redirect_and_notice
  end

  def redirect_and_notice
    redirect_to admin_categories_path, notice: 'STATE was successfully updated.'
  end

  private
  def set_ad
    @ad = Ad.find(params[:id])
  end

  def ad_params
    params.require(:ad).permit(:state,
                               :name,
                               :text,
                               :price,
                               :main_image,
                               :image_1,
                               :image_2,
                               :image_3,
                               :image_4,
                               :image_5,
                               :subcategory_id,
                               :user_id)
  end
end
