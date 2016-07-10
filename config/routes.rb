Rails.application.routes.draw do


    resources :staff, :clients, :projects, :films, :tv, :marketing, except: [:index, :show]
    resources :musicology_services, only: [:edit, :index]




  get "staff", to: "staff#index"

  get "clients", to: "clients#index"

  get "musicology_services", to: "musicology_services#index"

  get "projects", to: "projects#index"
  get "projects/name", to: "projects#show"

  get "films", to: "films#index"
  get "films/:title",  to: "films#show"

  get "tv", to: "tv#index"
  get "tv/:title",  to: "tv#show"

  get "marketing", to: "marketing#index"
  get "marketing/:id",  to: "marketing#show"
end
