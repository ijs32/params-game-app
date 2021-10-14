Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/game" => "params#game"
  get "/name" => "params#name"
end
