Rails.application.routes.draw do
  resources :markets, only: [:index, :show]
  resources :vendors, only: [:index, :show]
end
