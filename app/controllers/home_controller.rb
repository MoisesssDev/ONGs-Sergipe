class HomeController < ApplicationController
  def index
    @ongs = Ong.limit(2)
    @categories = Category.all
  end
end
