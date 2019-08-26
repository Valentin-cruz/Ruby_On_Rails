Rails.application.routes.draw do
  get "/hello" => "tests#hello"
  get "/say/hello" => "tests#say_hello"
  get "/say/hello/joe" => "tests#hello_joe"
  get "/say/hello/michael" => "tests#hello_michael"
  get "/times" => "tests#times"
  get "/times/restart" => "tests#times_restart"

  root "tests#index"
end
