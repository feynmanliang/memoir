Memoir::Application.routes.draw do
  root :to => "home#index"
  resources :slide_shows, only: [:show, :new, :create]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
