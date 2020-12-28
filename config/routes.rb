Rails.application.routes.draw do
  resources :foods, except: :show
  root 'home#index'
  get 'home/baby_food' => 'home#baby_food'
  get 'home/about_app' => 'home#about#app'
  
end
