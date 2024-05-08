class HomeController < ApplicationController
  def index
    @ongs = Ong.limit(2)
  end
end
