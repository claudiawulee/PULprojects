Rails.application.routes.draw do
  root "pets#index"

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/pets", to: "pets#index"
  get "/pets/new", to: "pets#new", as: 'new_pet'
  get "/pets/card", to: "pets#card", as: 'card'
  get "/pets/:id", to: "pets#show", as: 'page'
  delete "/pets/:id", to: "pets#destroy"
  resources :pets
  # Defines the root path route ("/")
  # root "articles#index"
end
