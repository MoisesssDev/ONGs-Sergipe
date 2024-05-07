class OngsController < ApplicationController
  def index
    @pagy, @ongs = pagy(Ong.all)
  end

  def search
    if params[:query].blank?
      redirect_to ongs_path
    else
      @pagy, @ongs = pagy(Ong.where('name LIKE :query OR description LIKE :query', query: "%#{params[:query]}%"))
      render :index
    end
  end
end
