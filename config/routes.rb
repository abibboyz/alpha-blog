Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, except: [:new]
  resources :articles #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create' 
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
  
end
