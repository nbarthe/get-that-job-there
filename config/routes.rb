Rails.application.routes.draw do
  devise_for :users
  root to: 'page#home'
  resources :users
  resources :coaches, only: [ :index, :show ]
end
