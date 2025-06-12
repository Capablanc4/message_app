Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  resources :user
  #DEFAULT
  get "up" => "rails/health#show", as: :rails_health_check
end
