Rails.application.routes.draw do
  root to: 'pages#home'



  resources :artists do

  resources :songs, only: [:create, :destroy]
  end
end
