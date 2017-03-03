class MasterTaskListController < ApplicationController

  # ##########################
  # TASK 1: Rate a logo
  # #############################

  def logo_task
    #Task to rate a logo
    @photo = Photo.new
    @task_id = 1
    render("/master_task_list/rate_a_logo_organization")
  end

  def save_logo_and_assign_task
    #Saves logo and assigns task

    #Saving logo
    @photo = Photo.new
    @photo.organizational_id = current_organization.id
    @photo.link = params[:link]
    @photo.save
    #Assigning logo task to organization
    @new_task = OrganizationalTask.new
    @new_task.task_id = params[:task_id]
    @new_task.organization_id = current_organization.id
    @new_task.limit_tasks = params[:task_limit]
    @new_task.save
  end

  def rate_logo
      # @organizational_task = params[:organizational_task]
      @organizational_task = params[:id]
      @assigned_task = OrganizationalTask.find(params[:id])
      @logo = Photo.where({:organizational_id => @assigned_task.organization_id}).first
  end
  def save_response
    #Saving the response
    assigned_task = OrganizationalTask.find(params[:id])
    logo = Photo.where({:organizational_id => assigned_task.organization_id}).first
    volunteer_rating_logo = LogoRating.new
    volunteer_rating_logo.logo_id = logo.id
    volunteer_rating_logo.volunteer_id = current_volunteer.id
    volunteer_rating_logo.rating = params[:response]
    volunteer_rating_logo.save

    #Saving volunteer's work in log
    volunteer_log = VolunteerActivityLog.new
    volunteer_log.volunteer_id = current_volunteer.id
    volunteer_log.task_id = params[:id]
    volunter_log.save

    redirect_to("/")
  end
end
