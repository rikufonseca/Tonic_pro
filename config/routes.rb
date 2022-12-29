Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :clients, only: %i(index show new create edit update)
  resources :bookings
  resources :categories, only: %i(index new create edit update destroy) do
    resources :sub_categories, only: %i(index new create edit update destroy)
  end

  resources :plannings, only: %i(new create)
  get "planning", to: "plannings#show"

  get 'dashboard', to: 'pages#dashboard'
  post 'getclient', to: 'bookings#getclient'
  post 'getsubcat', to: 'bookings#getsubcat'
end
