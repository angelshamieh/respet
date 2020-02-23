Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals, except: :destroy

  get 'dashboard', to: 'dashboard#profile', as: :dashboard
  get 'settings', to: 'dashboard#settings', as: :settings
end
