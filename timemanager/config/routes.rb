Timelist::Application.routes.draw do
  resources :timeentries
  resources :users
  resources :sessions, only: [:create, :destroy]

  get 'logout' => 'sessions#destroy', as: 'logout'
  get 'login' => 'sessions#new', as: 'login'

  root :to => 'welcome#index'

end
