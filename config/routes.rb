Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'session#new'
  get 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
