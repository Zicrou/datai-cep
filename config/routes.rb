Rails.application.routes.draw do
  resources :postedepaies
  resources :typedetablissements
  resources :conjoints
  resources :enfants
  resources :billeteurs
  resources :agences
  resources :banques
  resources :titres
  resources :sexes
  resources :mariers
  devise_for :users, path: '', path_names: {sign_in: 'Login', sign_out: 'Logout', sign_up: 'Register'}
  get 'pages/home'
  get 'pages/index'
  get 'pages/grappe_familliale'
  resources :emplois
  #resources :preststions
  resources :prestations
  resources :expatries
  resources :residences
  resources :agents do
    collection do
      get :agencebybanque
    end
    collection do
      get :departementbyregion
    end
  end
  resources :positions
  resources :postes
  resources :echellons
  resources :corps
  resources :classes
  resources :grades
  resources :mode_paiements
  resources :sous_service_etablsmts
  resources :service_etablsmts
  resources :etablissements
  resources :services
  resources :typeservices
  resources :directions
  resources :departements
  resources :regions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
