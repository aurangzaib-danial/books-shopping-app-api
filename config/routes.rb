Rails.application.routes.draw do
  resources :books
  post 'sign_in', action: :create, controller: :sign_in
  post 'sign_up', action: :create, controller: :sign_up
end
