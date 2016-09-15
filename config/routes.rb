Rails.application.routes.draw do
  #
  # resources :staffs
  get 'home/index'
  root "home#index"
  get 'home/services'

  # resources :services
  # resources :contacts
  # resources :clients
  # resources :films
  # resources :staff
  # resources :projects

  # namespace :projects do
  # resources :films
  # end

  get "projects", to: "projects#index"

  get "staff", to: "staff#index"
  post "staff", to: "staff#create"
  get "staff/new", to: "staff#new", as: "new_staff"
  get "staff/:name/edit", to: "staff#edit", as: "edit_staff"
  put "staff/:name", to: "staff#update", as: "update_staff"
  delete "staff/:name", to: "staff#delete"

  get "clients", to: "clients#index"
  post "clients", to: "clients#create"
  get "clients/new", to: "clients#new", as: "new_client"
  get "clients/:name/edit", to: "clients#edit"
  put "clients/:name", to: "clients#update", as: "update_client"
  delete "client/:name", to: "client#delete"

  get "musicology_services", to: "musicology_services#index"
  get "musicology_services/edit", to: "musicology_services#edit"
  put "musicology_services", to: "musicology_services#update", as: "update_musicology_services"
  delete "musicology_services", to: "musicology_services"

  get "films", to: "films#index"
  get "films/:title",  to: "films#show"
  get "films/new", to: "films#new", as: "new_film"
  post "films", to: "films#create"
  get "films/:title/edit", to: "films#edit"
  put "films/:title", to: "films#update", as: "update_film"
  delete "films/:title", to: "films#delete"

  get "independent_films", to: "independent_films#index"
  get "independent_films/:title",  to: "independent_films#show"
  get "independent_films/new", to: "independent_films#new", as: "new_indie_film"
  post "independent_films", to: "independent_films#create"
  get "independent_films/:title/edit", to: "independent_films#edit"
  put "independent_films/:title", to: "independent_films#update", as: "update_indie_film"
  delete "independent_films/:title", to: "independent_films#delete"

  get "tv", to: "tv#index"
  get "tv/:title",  to: "tv#show"
  get "tv/new", to: "tv#new", as: "new_tv"
  post "tv", to: "tv#create"
  get "tv/:title/edit", to: "tv#edit"
  put "tv/:title", to: "tv#update", as: "update_tv"
  delete "tv/:title", to: "tv#delete"

  get "marketing", to: "marketing#index"
  get "marketing/:title",  to: "marketing#show"
  get "marketing/new", to: "marketing#new", as: "new_marketing"
  post "marketing", to: "marketing#create"
  get "marketing/:title/edit", to: "marketing#edit"
  put "marketing/:title", to: "marketing#update", as: "update_marketing"
  delete "marketing/:title", to: "marketing#delete"

  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: "logout"

end
