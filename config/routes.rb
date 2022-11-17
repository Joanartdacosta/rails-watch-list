Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index new create show] do
    resources :bookmark, only: %i[new create]
  end
  delete 'bookmarks/:id', to: "bookmark#destroy", as: 'delete_bookmark'
end
