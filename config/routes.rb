Rails.application.routes.draw do
  devise_for :users
  resources :records, except: [:show]
  resources :users, only: [:show, :edit, :update]
  root 'home#index'
  # get 'home/baby_food' => 'home#baby_food'
end
