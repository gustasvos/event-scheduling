Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users
  root "meetings#index"
  
  resources :meetings do
    resources :comments
  end
end
