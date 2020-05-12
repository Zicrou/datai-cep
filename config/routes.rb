Rails.application.routes.draw do
  resources :sous_service_etablsmts
  resources :service_etablsmts
  resources :etablissements
  resources :services
  resources :typeservices
  resources :directions
  resources :departements
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
