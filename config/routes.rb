Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "application#start"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/login", to: "sessions#destroy"

  get "/homepage", to: "sessions#homepage"  #, as: "homepage" #why can't i use a pathhelper here? threw errors
  get "/secret", to: "secrets#show"

end
