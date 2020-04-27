Rails.application.routes.draw do
  resources :prospects, only: [:create]
end
