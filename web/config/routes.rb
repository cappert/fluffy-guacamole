Rails.application.routes.draw do
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root "users#index"
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  resources :users
  resources :benders
  resources :drinks
end
