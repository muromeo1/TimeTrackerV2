Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :show]
  root 'users#index'
end
