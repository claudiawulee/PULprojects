Rails.application.routes.draw do
  root "pets#index"

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/pets", to: "pets#index"
  # get "/pets/new", to: "pets#new", as: 'new_pet'
  get "/pets/card", to: "pets#card", as: 'pets_card' 
  # get "/pets/:id", to: "pets#show", as: 'page'
  get "/activities/card", to: "activities#card", as: 'activities_card'
  # get "/activities/new", to: "activities#new", as: 'new_activity'
  # get "/activities/:id", to: "activities#show", as: 'activities_page'
  # post "/activities/new", to: "activities#create", as: 'create_pet'
  # delete "/pets/:id", to: "pets#destroy", as: 'delete_pet'
  # post "/pets/:id", to: "pets#edit"
  resources :pets 
  resources :activities
  
  # Defines the root path route ("/")
  # root "articles#index"
end
