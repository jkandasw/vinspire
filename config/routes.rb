Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  root :to => "pages#home"

    get "/home", :controller => "pages", :action => "home"

    get("/street_to_weather", { :controller => "pages", :action => "street_to_weather" })

    get "/quotes", :controller => "users", :action => "show"

end
