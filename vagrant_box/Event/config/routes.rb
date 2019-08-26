Rails.application.routes.draw do
  get 'comments/content:text'
  get 'comments/user:references'
  get 'comments/event:references'
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  
  post 'sessions/create' => 'sessions#create'
  delete 'sessions/:id' => 'sessions#destroy'

  get 'events' => 'things#index'
  post 'events' => 'things#create'
  get 'events/:id' => 'things#show'
  get 'events/:id/edit' => 'things#edit'
  patch 'events/:id' => 'things#update'
  delete 'events/:id' => 'things#destroy'
end
