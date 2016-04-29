Rails.application.routes.draw do
  get "/" => "concerts#index"

  post "/concerts/show" => "concerts#show"

  get "/concerts/new" => "concerts#new"
  post "/concerts/create" => "concerts#create"

  post "/comments/create" => "comments#create"
end
