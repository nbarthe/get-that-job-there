Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/new'
  get 'appointments/edit'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  devise_for :users
  root to: 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
