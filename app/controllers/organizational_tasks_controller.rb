class OrganizationalTasksController < ApplicationController
  def index
    @organizational_tasks = OrganizationalTask.all

    render("organizational_tasks/index.html.erb")
  end

  def show
    @organizational_task = OrganizationalTask.find(params[:id])

    render("organizational_tasks/show.html.erb")
  end

  def new
    @organizational_task = OrganizationalTask.new

    render("organizational_tasks/new.html.erb")
  end

  def create
    @organizational_task = OrganizationalTask.new

    @organizational_task.organization_id = params[:organization_id]
    @organizational_task.task_id = params[:task_id]
    @organizational_task.limit_tasks = params[:limit_tasks]

    save_status = @organizational_task.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/organizational_tasks/new", "/create_organizational_task"
        redirect_to("/organizational_tasks")
      else
        redirect_back(:fallback_location => "/", :notice => "Organizational task created successfully.")
      end
    else
      render("organizational_tasks/new.html.erb")
    end
  end

  def edit
    @organizational_task = OrganizationalTask.find(params[:id])

    render("organizational_tasks/edit.html.erb")
  end

  def update
    @organizational_task = OrganizationalTask.find(params[:id])
    @organizational_task.task_id = params[:task_id]
    @organizational_task.limit_tasks = params[:limit_tasks]

    save_status = @organizational_task.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/organizational_tasks/#{@organizational_task.id}/edit", "/update_organizational_task"
        redirect_to("/organizational_tasks/#{@organizational_task.id}", :notice => "Organizational task updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Organizational task updated successfully.")
      end
    else
      render("organizational_tasks/edit.html.erb")
    end
  end

  def destroy
    @organizational_task = OrganizationalTask.find(params[:id])

    @organizational_task.destroy

    if URI(request.referer).path == "/organizational_tasks/#{@organizational_task.id}"
      redirect_to("/", :notice => "Organizational task deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Organizational task deleted.")
    end
  end
end
