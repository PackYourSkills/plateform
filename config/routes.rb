Rails.application.routes.draw do

  get 'skills/index'

  get 'skills/edit'

  get 'skills/new'

  root to: 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :crews, only: [:edit, :update, :show] do
    resources :orders, only: [:new, :show, :create]
  end
  get "crews/:id/deck", to: "crews#deck", as: 'deck_crew'

  resources :missions, only: [:new, :create, :edit, :show, :index, :destroy, :update] do
    resources :applications, only: [:new, :create, :edit, :show, :index, :destroy, :update]
  end
  get "packers/:id/deck", to: "packers#deck", as: 'deck_packer'

  resources :packers, only: [:edit, :update, :show] do
    resources :experiences, only: [:new, :create, :edit, :destroy, :update]
    resources :skills, only: [:new, :create, :edit, :destroy, :update]
    resources :educations, only: [:new, :create, :edit, :destroy, :update]
  end

end
