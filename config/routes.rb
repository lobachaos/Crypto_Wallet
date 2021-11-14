Rails.application.routes.draw do
  resources :mining_types
  root "welcome#index"
  get "welcome/index"
  resources :coins # Gera as rotas do  CRUD
end
