Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index, :show] do
    resources :buddy_sheets do
      resources :buddy_study_logs, only: [:update]
    end
  end

  resources :day_offs
  

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
