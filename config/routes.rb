Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/game/:wildcard" => "params#game"
  get "/name/:wildcard" => "params#name"
  get "/sum/:num1/:num2" => "params#sum"
end
