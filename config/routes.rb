Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations', sessions: 'users/sessions' }


  resources :crews, only: [:edit, :destroy, :update, :show] do
    resources :orders, only: [:new, :show, :create]
  end

  resources :missions, only: [:new, :create, :edit, :show, :index, :destroy, :update] do
    resources :applications, only: [:new, :create, :edit, :show, :index, :destroy, :update]
  end


  resources :packers, only: [:edit, :destroy, :update, :show] do
    resources :experiences, only: [:new, :create, :edit, :destroy, :update]
    resources :skills, only: [:new, :create, :edit, :destroy, :update]
    resources :educations, only: [:new, :create, :edit, :destroy, :update]
  end

end
