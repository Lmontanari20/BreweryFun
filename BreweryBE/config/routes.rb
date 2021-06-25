Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beer, only: [:index, :show, :new, :create], as: :beers
  resources :brewery, only: [:index, :show]
  resources :member, only: [:index, :show]
end
