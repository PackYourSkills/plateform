Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/nelson', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"


  get "infos/edit" #, as: 'info_packer' #to: "basics_infos#packer",
  patch "infos/update"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :crews, only: [:edit, :update, :show] do
    resources :orders, only: [:new, :show, :create]
  end
  get "crews/deck", to: "crews#deck", as: 'deck_crew'

  resources :missions, only: [:new, :create, :edit, :show, :index, :destroy, :update] do
    resources :connections, only: [:new, :create, :edit, :show, :index, :destroy, :update]
  end

  #to change the status of a mission
  get '/missions/:mission_id/connections/:id/accept', to:'connections#accept', as: 'accept_connection'
  get '/missions/:mission_id/connections/:id/refuse', to:'connections#refuse', as: 'refuse_connection'
  get '/missions/:mission_id/connections/:id/cancel', to:'connections#cancel', as: 'cancel_connection'
  get '/missions/:mission_id/connections/:id/confirm', to:'connections#confirm', as: 'confirm_connection'

  #to change the status of a connection
  get '/missions/:id/suspend', to:'missions#suspend', as: 'suspend_mission'
  get '/missions/:id/close', to:'missions#close', as: 'close_mission'
  get '/missions/:id/cancel', to:'missions#cancel', as: 'cancel_mission'

  resources :packers, only: [:edit, :update, :show] do
    member do
      patch :update_avatar
    end
    resources :experiences, only: [:new, :create, :edit, :destroy, :update]
    resources :skills, only: [:new, :create, :edit, :destroy, :update]
    resources :educations, only: [:new, :create, :edit, :destroy, :update]
  end
  get "packers/deck", to: "packers#deck", as: 'deck_packer'



  authenticated :user do
    root 'decks#show', as: :authenticated_root
  end

  root to: 'pages#home'
end
