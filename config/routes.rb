# frozen_string_literal: true

Rails.application.routes.draw do
  get "/signin", to: "sessions#new", as: "signin"
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions/", to: "sessions#destroy"

  root "static_pages#home"

  resources :users
  resources :customers do
    resources :vehicles do
      resources :appointments
    end
  end
end
