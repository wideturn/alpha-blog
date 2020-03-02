Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'

  #'resources' Gives new articles path, POST path, EDIT path, PATCH path to update, DELETE path, SHOW path, INDEX path
  resources :articles
end
