Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  # get 'movies', to: 'movies#movies'
  # resources :bookmarks
  # resources :movies
  resources :lists do
    resources :bookmarks, only: [ :new, :create, :index ]
  end
  resources :bookmarks, only: [ :destroy ]
  # get 'movies', to: 'movies#index'
  # get 'lists', to: 'lists#index'
end
