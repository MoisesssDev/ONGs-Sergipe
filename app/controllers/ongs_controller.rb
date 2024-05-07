class OngsController < ApplicationController
  def index
    @pagy, @ongs = pagy(Ong.all)
  end
end
