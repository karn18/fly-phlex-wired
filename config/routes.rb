Rails.application.routes.draw do
  root "home#index"

  resources :notes, only: [:create, :destroy]
  get "home/index"
  get "toast", to: "home#toast"
end
