Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/pages/who-are-we', to: 'pages#who_are_we', as: 'who_are_we'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
