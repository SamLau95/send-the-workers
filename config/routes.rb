SendTheWorkers::Application.routes.draw do
  root 'pages#home'
  
  devise_for :admins
end
