Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :edit, :update]
  root "users#index"
end
