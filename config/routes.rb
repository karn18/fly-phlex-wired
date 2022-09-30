Rails.application.routes.draw do
  root "home#index"

  resources :notes, only: [:create, :destroy]
  get "home/index"
  get "shuffle", to: "home#shuffle"
  get "toast", to: "home#toast"
  get "qoute", to: "home#qoute"
end
