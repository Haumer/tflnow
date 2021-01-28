Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get "map", to: "pages#map"
  get "timeline", to: "pages#timeline"
  get "panel", to: "pages#panel"
  get "search", to: "stations#search"
  get "panel/check_tfl", to: "pages#check_tfl"
  get "panel/parse_reasons", to: "pages#parse_reasons"

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
