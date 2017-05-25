Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index, :show]
  resources :day_offs
  resources :buddy_sheets
  get '/users' => 'users#index' 

  get '/users/:id' => 'users#show'

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
