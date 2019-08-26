Rails.application.routes.draw do
  root "rpg#index"
  post "/process" => "rpg#game"
  post "/reset" => "rpg#reset"
end
