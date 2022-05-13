Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  resources :meetings
  devise_for :users

  root "meetings#index"
end
