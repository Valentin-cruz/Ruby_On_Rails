Rails.application.routes.draw do
  get "dojos" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  post "/dojos" => "dojos#create"
  get "/dojos/:id" => "dojos#show"
  get "/dojos/:id/edit" => "dojos#edit"
  put "/dojos/:id" => "dojos#update"
  delete "/dojos/:id" => "dojos#destroy"
end
