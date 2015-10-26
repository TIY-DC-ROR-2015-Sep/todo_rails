Rails.application.routes.draw do
  get  "/create_list" => "lists#new"
  post "/create_list" => "lists#create"
  get  "/lists/:name" => "lists#show"

  get  "/lists/:list_name/create_item" => "items#new"
  post "/lists/:list_name/create_item" => "items#create"

  patch "/items/:id" => "items#mark_as_complete"

  # resources :lists, except: [:destroy] do
  #   resources :items, only: [:update, :destroy]
  # end

  root "lists#index"
end
