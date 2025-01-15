Rails.application.routes.draw do
  get 'doctors/index'
  devise_for :users
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "sign_out" => "devise/sessions#destroy", as: :sign_out
  resources :doctors, only: [:index, :show]
  # Defines the root path route ("/")
  # root "posts#index"
end
