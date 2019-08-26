Rails.application.routes.draw do
  get "/dojos" => "dojos#index"
  get "/dojos/new" => "dojos#new"
  post "/dojos" => "dojos#create"
  get "/dojos/:id" => "dojos#show"
  get "/dojos/:id/edit" => "dojos#edit"
  put "/dojos/:id" => "dojos#update"
  delete "/dojos/:id" => "dojos#destroy"

  get "/dojos/:dojo_id/students/new" => "students#new"
  post "/dojos/:dojo_id/students" => "students#create"
  get "/dojos/:dojo_id/students/:student_id" => "students#show"
  get "/dojos/:dojo_id/students/:student_id/edit" => "students#edit"
  put "/dojos/:dojo_id/students/:student_id" => "students#update"
  delete "/dojos/:dojo_id/students/:student_id" => "students#destroy"
end
