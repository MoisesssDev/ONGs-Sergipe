Rails.application.routes.draw do
  root 'home#index'

  resources :ongs, only: %i[index] do
    get 'search', on: :collection
    get 'category/:category_id', on: :collection, action: :search_by_category, as: :category
  end

end
