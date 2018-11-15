Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/users/:username', to: "users#find_user"
get '/users/find/:id', to: "users#show"
delete '/userjoblists/:user_id/:job_id', to: "userjoblists#destroy"
post 'users/email/:id', to:"users#email"


resources :users, only: [:create, :destroy, :update]
resources :jobs

 post '/users/email/:user_id', to: "users#email"
get '/search/:location/:description/:full_time/', to: "jobs#search"
post "/userjoblists", to: "userjoblists#create"
get '/userjoblists/:job_apiId/:user_id', to: "userjoblists#check"
end
