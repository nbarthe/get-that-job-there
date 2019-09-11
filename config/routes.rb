Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :appointments, only: [ :new, :create ]
  end
  resources :coaches, only: [ :index, :show ]

  get '/pages/who-are-we', to: 'pages#who_are_we', as: 'who_are_we'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
