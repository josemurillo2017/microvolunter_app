Rails.application.routes.draw do
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
