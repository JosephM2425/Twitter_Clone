Rails.application.routes.draw do
  resources :tweets do 
    resources :likes, only: [:create, :update, :destroy]
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
