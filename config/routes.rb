Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "map", to: "pages#map"
  get "search", to: "stations#search"

  resources :lines, only: [:show] do
    resources :incidents, only: [:show]
  end
  resources :incidents, only: [:index]
  resources :stations, only: [:show, :index]

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
