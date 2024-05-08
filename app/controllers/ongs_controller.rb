class OngsController < ApplicationController
  def index
    @counting = Ong.search(params[:query]).count

    @pagy, @ongs = pagy(Ong.all)
  end

  def search
    @counting = Ong.search(params[:query]).count

    @pagy, @ongs = pagy(Ong.search(params[:query]))
    render :index
  end
end
