class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.page(params[:page]).per(10)
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end
  def dashboard
    @all_current_tasks = OrganizationalTask.all()
  end
end
