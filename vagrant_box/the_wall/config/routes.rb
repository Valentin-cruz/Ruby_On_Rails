Rails.application.routes.draw do
  get 'messages' => 'messages#index'
  post 'messages' => 'messages#create'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
end
