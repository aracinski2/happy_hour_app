Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/recipes" => "recipes#index"
    get "/recipes/:id" => "recipes#show"

    get "/ingredients" => "ingredients#index"

    get "/favorites" => "favorites#index"
    post "/favorites" => "favorites#create"
    delete "/favorites/:id" => "favorites#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end

  # get 'page_controller/*path', to: 'page_controller#index', format: false
  # root 'application#index'
  # get '/*path', to: 'application#index'
end
