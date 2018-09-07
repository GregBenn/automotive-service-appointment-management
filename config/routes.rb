Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/new'
  get 'static_pages/home'
  resources :appointments
  resources :vehicles
  resources :customers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
