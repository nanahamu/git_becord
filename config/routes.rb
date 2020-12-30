Rails.application.routes.draw do
  devise_for :users
  resources :foods, except: :show
  resources :users, only: [:show, :edit, :update]
  root 'home#index'
  get 'home/baby_food' => 'home#baby_food'
  get 'home/about_app' => 'home#about_app'
end
