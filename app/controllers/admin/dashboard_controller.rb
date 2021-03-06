class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    unless current_user.admin?
      redirect_to root_path, alert: 'У Вас недостаточно прав для посещения данной страницы'
    end
    @categories = Category.all
    @ads = Ad.all
    @users = User.all
  end
end