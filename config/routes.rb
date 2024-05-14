Rails.application.routes.draw do
  root "home#index"

  get "/clientes", to: "clientes#index"
  get "/clientes/:id", to: "clientes#show"
  post "/clientes", to: "clientes#create"
end
