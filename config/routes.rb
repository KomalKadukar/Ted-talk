Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/show'
  # get 'tedtalks/index'
  # get 'tedtalks/show'

  # root_path
  root to: 'tedtalks#index'

  # about page path
  get 'about', to: 'pages#about', as: 'about'

  # tedtalks - index and show pages
  resources :tedtalks, only: [:index, :show]

  # speakers path - index and show page
  # get '/speakers', to: 'speakers#index', as: 'speaker'
  # get '/speakers/:id', to: 'speakers#show'
  resources :speakers, only: [:index, :show], as: 'speaker'

  # tags path - index and show pages
  resources :tags, only: [:index, :show], as: 'tags'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
