Rails.application.routes.draw do
  root to: 'pages#home'

  # For details root to: 'pages#home'

  resources :artists

  resources :songs, except: [:show, :edit]
end
