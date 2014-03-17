Yearbooker::Application.routes.draw do
  resources :cohorts, only: [:new, :create, :show]
end
