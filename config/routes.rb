Rails.application.routes.draw do
  
  get 'home/index'
  root "home#index"
  get 'home/services'

  get "projects", to: "projects#index"
  # resources :services
  resources :clients
  resources :films
  resources :tvs
  resources :marketings
  resources :indie_films
  resources :staffs
  resources :contacts


  get "musicology_services", to: "musicology_services#index"
  get "musicology_services/edit", to: "musicology_services#edit"
  put "musicology_services", to: "musicology_services#update", as: "update_musicology_services"
  delete "musicology_services", to: "musicology_services"

  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: "logout"

end
