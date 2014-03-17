Yearbooker::Application.routes.draw do
  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  resources :users, except: [:new, :create]
end
