class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.page(params[:page]).per(10)
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end
  def dashboard
    @all_current_tasks = OrganizationalTask.all()
    @old_tasks = VolunteerActivityLog.where("volunteer_id ==#{current_volunteer.id}")
    @random_task = OrganizationalTask.order("RANDOM()").first
  end
end
