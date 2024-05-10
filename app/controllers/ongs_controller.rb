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

  def search_by_category
    @counting = Ong.search_by_category(params[:category_id]).count

    @pagy, @ongs = pagy(Ong.search_by_category(params[:category_id]))
    render :index
  end
end
