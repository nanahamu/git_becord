Rails.application.routes.draw do
  root 'home#index'
  get 'home/baby_food' => 'home#baby_food'
  get 'home/about_app' => 'home#about#app'
  resources :foods, except: :show
end
