Todone::Application.routes.draw do
  
  root :to => "static#index"
  
  resources :lists do
    resources :tasks
  end
  
  #Offline storage:
  #match "/application.manifest" => Rails::Offline
  
  match "lists/:list_id/tasks/:id/complete" => "tasks#complete", :as => :complete_task
  
  # Session routing
  resources :users
  resources :sessions
  get "sign-out" => "sessions#destroy", :as => "sign_out"
  delete "sign-out" => "sessions#destroy", :as => "sign_out"
  get "sign-in" => "sessions#new", :as => "sign_in"
  get "sign-up" => "users#new", :as => "sign_up"
  
  get "lists" => "lists#index", :as => "lists"
  
  # If no action specified, default to index
  match ":controller(/index)", :action => "index"
  
  # Check the public folder last for static files
  match ":action" => "static#:action"


  # The priority is based upon order of creation:
  # first created -> highest priority.
end
