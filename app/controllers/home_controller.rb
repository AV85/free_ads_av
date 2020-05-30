class HomeController < ApplicationController
  def index
    @categories = Category.published.order(name: :asc)
    @ads = Ad.order(updated_at: :desc)
  end
end
