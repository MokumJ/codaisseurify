Rails.application.routes.draw do
  root to: 'artists#index'



  resources :artists do

  resources :songs, only: [:create, :new, :destroy]
  end
end
