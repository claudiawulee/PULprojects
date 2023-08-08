Rails.application.routes.draw do
  root "pets#index"

  resources :pets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/pets", to: "pets#index"
  # get "/pets/:name", to: "pets#show"
  # Defines the root path route ("/")
  # root "articles#index"
  # delete "/pets/:id", to: "pets#destroy"
end
