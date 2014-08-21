Rails.application.routes.draw do

  root 'posts#index'

  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id', to: 'posts#show'
  get 'posts/:id/edit', to: 'posts#edit'
  get 'tags', to: 'tags#index'
  get 'tags/:id', to: 'tags#show'

  post 'posts/create', to: 'posts#create'
  delete 'posts/:id', to: 'posts#delete'
  put 'posts/:id', to: 'posts#update'
end
