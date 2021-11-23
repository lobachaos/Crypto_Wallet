Rails.application.routes.draw do
  resources :wallets
  resources :users
  resources :mining_types
  root "welcome#index"
  get "welcome/index"
  resources :coins # Gera as rotas do  CRUD
end
