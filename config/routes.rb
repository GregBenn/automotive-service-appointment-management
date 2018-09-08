# frozen_string_literal: true

Rails.application.routes.draw do
  get "/signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions/", to: "sessions#destroy"

  get "static_pages/home"

  resources :users
  resources :customers do
    resources :vehicles
  end
  resources :appointments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
