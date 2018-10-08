Rails.application.routes.draw do
  # get 'tedtalks/index'
  # get 'tedtalks/show'

  # root_path
  root to: 'tedtalks#index'

  # about page path
  get 'about', to: 'pages#about', as: 'about'

  # tedtalks - index and show pages
  resources :tedtalks, only: [:index, :show]

  # spealkers path - index and show page
  resources :speakers, only: [:index, :show], as: 'speaker'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
