Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  root :to => "pages#home"

    get "/home", :controller => "pages", :action => "home"

    get("/street_to_weather", { :controller => "pages", :action => "street_to_weather" })

    get "/users", :controller => "users", :action => "index"

  # Routes for the Mood resource:
    # CREATE
  # get "/moods/new", :controller => "moods", :action => "new"
  # post "/create_mood", :controller => "moods", :action => "create"
  #
  # # READ
  # get "/moods", :controller => "moods", :action => "index"
  # get "/moods/:id", :controller => "moods", :action => "show"
  #
  # # UPDATE
  # get "/moods/:id/edit", :controller => "moods", :action => "edit"
  # post "/update_mood/:id", :controller => "moods", :action => "update"
  #
  # # DELETE
  # get "/delete_mood/:id", :controller => "moods", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the Quote resource:
  # # CREATE
  # get "/quotes/new", :controller => "quotes", :action => "new"
  # post "/create_quote", :controller => "quotes", :action => "create"
  #
  # # READ
  # get "/quotes", :controller => "quotes", :action => "index"
  # get "/quotes/:id", :controller => "quotes", :action => "show"
  #
  # # UPDATE
  # get "/quotes/:id/edit", :controller => "quotes", :action => "edit"
  # post "/update_quote/:id", :controller => "quotes", :action => "update"
  #
  # # DELETE
  # get "/delete_quote/:id", :controller => "quotes", :action => "destroy"
  # #------------------------------
  #
  # # Routes for the User resource:
  # # CREATE
  # get "/users/new", :controller => "users", :action => "new"
  # post "/create_user", :controller => "users", :action => "create"

  # READ
  # get "/users", :controller => "users", :action => "index"
  # get "/users/:id", :controller => "users", :action => "show"
  #
  # # UPDATE
  # get "/users/:id/edit", :controller => "users", :action => "edit"
  # post "/update_user/:id", :controller => "users", :action => "update"
  #
  # # DELETE
  # get "/delete_user/:id", :controller => "users", :action => "destroy"
  # #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
