Rails.application.routes.draw do
  get 'welcome/index'
  resources :destinations
  
  get 'signup'  => 'users#new' 
  resources :users
  
  # For login function
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'welcome#index' #Point Welcome page as root page

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
