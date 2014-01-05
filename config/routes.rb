SendTheWorkers::Application.routes.draw do
  root 'pages#home'
  
  devise_for :users

  resources :testimonies, only: [:show, :index]
end
