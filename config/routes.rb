Rails.application.routes.draw do
  devise_for :users
  root to: 'diagnoses#index'
  resources :users, only: [:edit, :update]
  resources :menus, only: [:new, :create , :destroy] do
    resources :diagnoses, only: [:index]
  end
end
