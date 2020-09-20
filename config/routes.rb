Rails.application.routes.draw do
  devise_for :users
  get 'diagnoses/index'
  root to: 'diagnoses#index'
end
