Rails.application.routes.draw do
  resources :contents
  resources :comments
  resources :posts
  resources :walls
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
