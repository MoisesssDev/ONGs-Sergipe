Rails.application.routes.draw do
  root 'home#index'

  resources :ongs, only: %i[index]
end
