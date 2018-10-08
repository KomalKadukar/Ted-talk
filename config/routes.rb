Rails.application.routes.draw do
  # get 'tedtalks/index'
  # get 'tedtalks/show'

  root to: 'tedtalks#index'

  resources :tedtalks, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
