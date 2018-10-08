Rails.application.routes.draw do
  # get 'tedtalks/index'
  # get 'tedtalks/show'

  # root_path
  root to: 'tedtalks#index'

  # about page path
  get 'about', to: 'pages#about', as: 'about'

  # tedtalk path - index page
  resources :tedtalks, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
