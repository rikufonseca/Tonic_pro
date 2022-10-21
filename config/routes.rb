Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :clients, only: %i(index show new create edit update)
  resources :bookings, only: %i(index new create show edit update destroy)
  resources :offers, only: %i(index show new create edit update destroy)
  resources :cathegories, only: %i(index show new create edit update) do
    resources :sub_cathegories, only: %i(index show new create edit update)
  end

  get 'dashboard', to: 'pages#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
