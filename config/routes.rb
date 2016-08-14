Rails.application.routes.draw do
  resources :tweets, except: [:edit, :destroy, :update]
  resources :users
end
