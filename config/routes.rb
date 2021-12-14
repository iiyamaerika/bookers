Rails.application.routes.draw do
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get 'books'     => 'books#index'
  post 'books' => 'books#create'
  get "books/:id" => 'books#show'
  get 'books/:id/edit' => 'books#edit'
end