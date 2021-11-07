Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "welcome", to:"home#index"

  root to: "home#index"
  
  get "customers", to:"customers#index"
  get "customers/new", to: "customers#new", as: :new_customers
  get "customers/:id", to: "customers#show"
  get "customers/:id/edit", to: "customers#edit"

  patch "customers/:id", to: "customers#update", as: :customer
  post "customers", to: "customers#create"
  delete "customers/:id", to: "customers#destroy"

end
