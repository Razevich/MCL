Rails.application.routes.draw do

  resources :admin do


  end


  get "staff", to: "staff#index"
  get "clients", to: "clients#index"
  get "projects", to: "projects#index"
  get "musicology_services", to: "musicology_services#index"

  get "films", to: "films#index"
  get "films/:id",  to: "films#show"

  get "tv", to: "tv#index"
  get "tv/:id",  to: "tv#show"

  get "marketing", to: "marketing#index"
  get "marketing/:id",  to: "marketing#show"
end
