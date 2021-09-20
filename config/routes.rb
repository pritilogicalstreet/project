Rails.application.routes.draw do
  resources :clients
  resources :states
  resources :districts
  resources :talukas
end
