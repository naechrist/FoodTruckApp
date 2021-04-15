Rails.application.routes.draw do
  resources :users
  resources :photos
  resources :reviews
  resources :food_trucks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
