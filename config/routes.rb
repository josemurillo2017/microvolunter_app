Rails.application.routes.draw do
  # Routes for the Task resource:
  # CREATE
  get "/tasks/new", :controller => "tasks", :action => "new"
  post "/create_task", :controller => "tasks", :action => "create"

  # READ
  get "/tasks", :controller => "tasks", :action => "index"
  get "/tasks/:id", :controller => "tasks", :action => "show"

  # UPDATE
  get "/tasks/:id/edit", :controller => "tasks", :action => "edit"
  post "/update_task/:id", :controller => "tasks", :action => "update"

  # DELETE
  get "/delete_task/:id", :controller => "tasks", :action => "destroy"
  #------------------------------

  devise_for :volunteers
  # Routes for the Volunteer resource:
  # READ
  get "/volunteers", :controller => "volunteers", :action => "index"
  get "/volunteers/:id", :controller => "volunteers", :action => "show"


  devise_for :organizations
  # Routes for the Organization resource:
  # READ
  get "/organizations", :controller => "organizations", :action => "index"
  get "/organizations/:id", :controller => "organizations", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
