Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :destination #Added Destination controller as a resources (following CRUD convention)
  
  root 'welcome#index' #Point Welcome page as root page

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
