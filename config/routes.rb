Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/users/:username', to: "users#find_user"


resources :users, only: [:create, :destroy, :update]
resources :jobs


get '/search/:location/:description/:full_time/', to: "jobs#search"
post "/userjoblists", to: "userjoblists#create"
get '/userjoblists/:job_apiId/:user_id', to: "userjoblists#check"
end
