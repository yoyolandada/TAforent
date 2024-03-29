Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :offers, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create ]
  end

  patch "bookings/:id/accept", to: "bookings#accept", as: :accept_booking
  patch "bookings/:id/decline", to: "bookings#decline", as: :decline_booking
  get "/dashboard", to: "pages#dashboard"
end
