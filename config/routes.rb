# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search', to: 'search#page'
  get 'users/profile'

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # reason why its user and not users is because ever user account work for this
  get '/user_profile/:id', to: 'users#profile', as: 'user'
  # this is to targetmy comments too so i can go to posts/1/comment/1
  resources :posts do
    resources :comments
  end
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
