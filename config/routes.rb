# Tells Rails how to connect incoming requests to controllers and actions

Rails.application.routes.draw do
  get 'hello_world/index'

  # Resource route (maps HTTP verbs to controller actions automatically):
  resources :events

  root 'hello_world#index'
end
