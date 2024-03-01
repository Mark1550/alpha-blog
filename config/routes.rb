Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'pages#home'
  get "about", to: "pages#about"
  resources :articles
  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
