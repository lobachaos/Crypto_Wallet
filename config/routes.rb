Rails.application.routes.draw do
  root "welcome#index"
  get "welcome/index"
  resources :coins # Gera as rotas do  CRUD
end
