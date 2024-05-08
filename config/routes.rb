Rails.application.routes.draw do
  root 'home#index'

  resources :ongs, only: %i[index] do
    get 'search', on: :collection
  end
end
