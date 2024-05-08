class HomeController < ApplicationController
  def index
    @ongs = Ong.limit(3)
  end
end
