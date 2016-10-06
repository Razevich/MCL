Rails.application.routes.draw do

  get 'home/index'
  root "home#index"
  get 'home/services'

  get "projects", to: "projects#index"

  resources :clients
  resources :films
  resources :tvs
  resources :marketings
  resources :indie_films
  resources :musicology_services
  resources :staffs
  resources :contacts, only: [:index]

  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: "logout"

end
