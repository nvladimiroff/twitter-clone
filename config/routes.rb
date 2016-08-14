Rails.application.routes.draw do
  resources :tweets, except: [:edit, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
