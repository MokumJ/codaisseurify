Rails.application.routes.draw do
  root to: 'pages#home'



  resources :artists do

  resources :songs, only: [:create, :new, :destroy]
  end
end
