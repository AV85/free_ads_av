class HomeController < ApplicationController
  def index
    @categories = Category.published.order(name: :asc)
    @ads = Ad.published.order(updated_at: :desc)
  end
end
