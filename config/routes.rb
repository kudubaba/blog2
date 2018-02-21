Rails.application.routes.draw do
  get 'posts/new' => 'posts'
  post 'posts' => 'posts'
  get 'posts' => 'posts#index'
  get 'post/:id' => 'posts#show', as: 'post'
  delete 'post/:id' => 'posts#destroy', as: 'delete_post'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  put 'posts/:id' => 'posts#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
