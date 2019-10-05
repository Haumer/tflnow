Rails.application.routes.draw do
  root to: 'pages#home'
  get "map", to: "pages#map"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lines, only: [:show] do
    resources :incidents, only: [:show]
  end
end
