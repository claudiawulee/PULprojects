Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #according to treehouse course
  resources :pages
  # get '/pages', to: 'pages#index' #get request for the /pages path should go to the pages controller index method
  # post '/pages', to: 'pages#create'
  # get "/pages/new", to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to:'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'
end
