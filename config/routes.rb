Rails.application.routes.draw do
  resources :messages
  resources :users
  resources :home

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
