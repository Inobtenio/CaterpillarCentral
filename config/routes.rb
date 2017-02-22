Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :rooms do
        put "edit", on: :collection, path: ""
       	get "get", on: :collection, path: ""
      end 
      resources :users
    end
  end
end
