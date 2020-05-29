class HomeController < ApplicationController
  def index
    @categories = Category.published.order(name: :asc)
  end
end
