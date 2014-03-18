Yearbooker::Application.routes.draw do
  resources :cohorts, only: [:index, :new, :create, :show]
  resources :campuses, only: [:new, :create, :show]

  get "/signup", to: "users#new"
  post "/users", to: "users#create"
  
  resources :users, except: [:new, :create]

  #sessions routes
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  root "users#new"

  get "/yearbookeradmin", to: "adminwelcome#index"

end
