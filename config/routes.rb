Yearbooker::Application.routes.draw do
  resources :cohorts, only: [:index, :new, :create, :show, :edit]
  resources :campuses, only: [:new, :create, :show]

  get "/signup", to: "users#new"
  
  resources :users, except: [:new]

  #sessions routes
  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"

  root "campuses#index"

  get "/yearbookeradmin", to: "adminwelcome#index"

  resources :students, only: [:edit, :update]

end
