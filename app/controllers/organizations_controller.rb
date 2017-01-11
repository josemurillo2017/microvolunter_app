class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.page(params[:page]).per(10)
  end

  def show
    @organization = Organization.find(params[:id])
  end
end
