Rails.application.routes.draw do
  root "home#index"

  resources :notes
  get "home/index"
  get "toast", to: "home#toast"
end
