Rails.application.routes.draw do
  get  "/create_list" => "lists#new"
  post "/create_list" => "lists#create"
  get  "/lists/:name" => "lists#show"

  root "lists#index"
end
