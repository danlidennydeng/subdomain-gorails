Rails.application.routes.draw do
  resources :cities
  resources :products
  resources :projects
  resources :advertisers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
