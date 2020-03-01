Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals, except: :destroy do
    # resources :bookmarks, only: %i[create destroy]
    post 'bookmark', to: 'bookmarks#toggle'
  end
  resources :medical_centers, only: :index

  resources :chats, only: [:index, :show] do
    resources :messages, only: [:create]
  end

  get 'dashboard', to: 'dashboard#profile', as: :dashboard
  get 'settings', to: 'dashboard#settings', as: :settings

  patch 'update_user', to: 'dashboard#update', as: :update_settings

  patch 'animals/:id/update_status', to: 'animals#update_status', as: :update_animal_status

  get 'start_chat/:user_id', to: 'chats#start_chat', as: :start_chat

end
