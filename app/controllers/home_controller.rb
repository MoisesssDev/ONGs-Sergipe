class HomeController < ApplicationController
  def index
    @ongs = Ong.limit(4)
  end
end
