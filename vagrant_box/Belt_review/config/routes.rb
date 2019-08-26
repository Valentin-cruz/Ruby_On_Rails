Rails.application.routes.draw do
  get 'users' => 'users#index'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  
  post 'sessions/create' => 'sessions#create'
  delete 'sessions/:id' => 'sessions#destroy'

  get 'events' => 'events#index'
  post 'events' => 'events#create'
  get 'events/:id' => 'events#show'
  get 'events/:id/edit' => 'events#edit'
  patch 'events/:id' => 'events#update'
  delete 'events/:id' => 'events#destroy'

  post 'comments/create' => 'comments#create'
  delete 'comments/:id' => 'comments#destroy'

  post 'rsvps' => 'rsvps#create'
  delete 'rsvps/:id' => 'rsvps#destroy'
end
