Memoir::Application.routes.draw do
  resources :slide_shows, only: [:show, :new, :create]
end
