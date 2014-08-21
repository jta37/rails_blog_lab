Rails.application.routes.draw do

  root 'posts#index'

  resources :posts do
    resources :comments
  end

  get 'tags', to: 'tags#index'
  get 'tags/:id', to: 'tags#show'
end
