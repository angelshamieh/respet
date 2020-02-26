Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals, except: :destroy
  resources :medical_centers, only: :index


  get 'dashboard', to: 'dashboard#profile', as: :dashboard
  get 'settings', to: 'dashboard#settings', as: :settings

  patch 'update_user', to: 'dashboard#update', as: :update_settings

  patch 'animals/:id/update_status', to: 'animals#update_status', as: :update_animal_status

end
