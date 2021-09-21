Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'top' => 'homes#top'
  get 'home/about' => 'homes#about'

  get 'books' => 'books#index', as: 'books'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book'
  delete 'books/:id' => 'books#destroy'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'

  post 'books/:book_id/book_comments' => 'book_comments#create', as: 'book_book_comments'
  delete 'books/:book_id/book_comments/:id' => 'book_comments#destroy', as: 'book_book_comment'

  post 'books/:book_id/favorites' => 'favorites#create', as: 'book_favorites'
  delete 'books/:book_id/favorites' => 'favorites#destroy'


  get 'users' => 'users#index', as: 'users'
  get 'users/:id' => 'users#show', as: 'user'
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  patch 'users/:id' => 'users#update', as: 'update_user'
end
