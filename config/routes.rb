Rails.application.routes.draw do
  resources :books, only: [:index, :show]
  post 'sign_in', action: :create, controller: :sign_in
  post 'sign_up', action: :create, controller: :sign_up
  resources :genres, only: :index
  resources :orders, only: [:create, :index]
end
