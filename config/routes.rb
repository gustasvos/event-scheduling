Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :meetings do
    resources :comments
  end
  devise_for :users

  root "meetings#index"
end
