Rails.application.routes.draw do
  devise_for :users
  root to: 'diagnoses#index'
  resources :users, only: [:edit, :update]
  resources :menus, only: [:new,  :create] do
    resources :diagnoses, only: [:index, :create]
  end
end
