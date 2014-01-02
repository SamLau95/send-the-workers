SendTheWorkers::Application.routes.draw do
  root 'pages#home'
  
  devise_for :admins
  resources :testimonies, only: [:show, :index]

end
