class Admin::AdsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ad, only: [:show, :edit, :update, :destroy]

  def index
    @ads = Ad.all
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

  private
  def set_ad
    @ad = Ad.find(params[:id])
  end

  def ad_params
    params.require(:ad).permit(:state, :name, :text, :price, images: [])
  end
end
