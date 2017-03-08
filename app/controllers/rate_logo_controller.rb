class RateLogoController < ApplicationController

  # ##########################
  # TASK 1: Rate a logo
  # #############################


  # ##########################
  #       Org
  # #############################

  def logo_task
    #Task to rate a logo
    @photo = Photo.new
    @task_id = 1
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

    #Saving logo to organizational_task
    @new_ogt = OgtPhoto.new
    @new_ogt.org_task_id = @new_task.id
    @new_ogt.photo_logo_id = @photo.id
    @new_ogt.save

    redirect_to("/add_task")
  end
  def show
    @organizational_task = params[:task_id].to_i
    @assigned_task = OgtPhoto.where({:org_task_id => @organizational_task}).first
    @logo = @assigned_task.photo
  end

  # ##########################
  # Volunteer
  # #############################


  def rate_logo
    @organizational_task = params[:task_id].to_i
    @assigned_task = OgtPhoto.where({:org_task_id => @organizational_task}).first
    @logo = @assigned_task.photo
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
    volunteer_log.save

    redirect_to("/dashboard")
  end

end
