Rails.application.routes.draw do

  get "/users" => "users#index"
  get "/users/new" => "users#new"
  post "/users" => "users#create"
  get "/users/1" => "users#show"
  get "/users/1/edit" => "users#edit"
  get "/users/total" => "users#total"
  put "/users/1" => "users#update"
  
end
