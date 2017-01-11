class ApplicationController < ActionController::Base
  before_action :authenticate_organization!

  protect_from_forgery with: :exception
end
