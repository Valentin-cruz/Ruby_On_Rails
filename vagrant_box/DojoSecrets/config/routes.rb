Rails.application.routes.draw do
  post 'likes/create' => 'likes#create'
  delete 'likes/destroy' => 'likes#destroy'
  get 'secrets/index' => 'secrets#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  get 'sessions/new' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'
  delete 'sessions/:id' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
