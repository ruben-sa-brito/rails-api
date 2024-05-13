Rails.application.routes.draw do
  root "home#index"

  get "/clientes", to: "clientes#index"
end
