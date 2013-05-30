Horizon::Application.routes.draw do

  resources :homepages


  root to: 'welcome#index'

  get 'log_out' => 'sessions#destroy', as: 'log_out'
  get 'log_in' => 'sessions#new', as: 'log_in'

  resources :welcome, only: :index
  resources :users
  resources :sessions, only: [:create, :destroy]
end