Rails.application.routes.draw do
  get  "/create_list" => "lists#new"
  post "/create_list" => "lists#create"

  root "lists#index"
end
