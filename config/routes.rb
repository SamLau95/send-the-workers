SendTheWorkers::Application.routes.draw do
  mount Mercury::Engine => '/'
  root 'pages#home'
  
  devise_for :users

  resources :testimonies, only: [:show, :index]
end
