Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "map", to: "pages#map"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lines, only: [:show] do
    resources :incidents, only: [:show]
  end
  resources :incidents, only: [:index]

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
