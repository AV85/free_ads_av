class HomeController < ApplicationController
  def index
    @categories = Category.published
  end
end
