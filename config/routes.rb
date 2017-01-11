Rails.application.routes.draw do
  # Routes for the Organizational_reward resource:
  # CREATE
  get "/organizational_rewards/new", :controller => "organizational_rewards", :action => "new"
  post "/create_organizational_reward", :controller => "organizational_rewards", :action => "create"

  # READ
  get "/organizational_rewards", :controller => "organizational_rewards", :action => "index"
  get "/organizational_rewards/:id", :controller => "organizational_rewards", :action => "show"

  # UPDATE
  get "/organizational_rewards/:id/edit", :controller => "organizational_rewards", :action => "edit"
  post "/update_organizational_reward/:id", :controller => "organizational_rewards", :action => "update"

  # DELETE
  get "/delete_organizational_reward/:id", :controller => "organizational_rewards", :action => "destroy"
  #------------------------------

  # Routes for the Organizational_task resource:
  # CREATE
  get "/organizational_tasks/new", :controller => "organizational_tasks", :action => "new"
  post "/create_organizational_task", :controller => "organizational_tasks", :action => "create"

  # READ
  get "/organizational_tasks", :controller => "organizational_tasks", :action => "index"
  get "/organizational_tasks/:id", :controller => "organizational_tasks", :action => "show"

  # UPDATE
  get "/organizational_tasks/:id/edit", :controller => "organizational_tasks", :action => "edit"
  post "/update_organizational_task/:id", :controller => "organizational_tasks", :action => "update"

  # DELETE
  get "/delete_organizational_task/:id", :controller => "organizational_tasks", :action => "destroy"
  #------------------------------

  # Routes for the Reward resource:
  # CREATE
  get "/rewards/new", :controller => "rewards", :action => "new"
  post "/create_reward", :controller => "rewards", :action => "create"

  # READ
  get "/rewards", :controller => "rewards", :action => "index"
  get "/rewards/:id", :controller => "rewards", :action => "show"

  # UPDATE
  get "/rewards/:id/edit", :controller => "rewards", :action => "edit"
  post "/update_reward/:id", :controller => "rewards", :action => "update"

  # DELETE
  get "/delete_reward/:id", :controller => "rewards", :action => "destroy"
  #------------------------------

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
