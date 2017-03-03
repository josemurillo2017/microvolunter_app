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
      @organizational_task = 2
      @task_id = 1

      @assigned_task = OrganizationalTask.find(@organizational_task)
      @logo = Photo.where({:organizational_id => @assigned_task.organization_id}).first
      # @assigned_task.Photos.first


  end
end
