class HomeController < ApplicationController
  def index
    @ongs = Ong.limit(2)
    @categories = Category.limit(7)
  end
end
