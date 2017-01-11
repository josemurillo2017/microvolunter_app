class VolunteerActivityLogsController < ApplicationController
  def index
    @volunteer_activity_logs = VolunteerActivityLog.all

    render("volunteer_activity_logs/index.html.erb")
  end

  def show
    @volunteer_activity_log = VolunteerActivityLog.find(params[:id])

    render("volunteer_activity_logs/show.html.erb")
  end

  def new
    @volunteer_activity_log = VolunteerActivityLog.new

    render("volunteer_activity_logs/new.html.erb")
  end

  def create
    @volunteer_activity_log = VolunteerActivityLog.new

    @volunteer_activity_log.volunteer_id = params[:volunteer_id]
    @volunteer_activity_log.task_id = params[:task_id]

    save_status = @volunteer_activity_log.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/volunteer_activity_logs/new", "/create_volunteer_activity_log"
        redirect_to("/volunteer_activity_logs")
      else
        redirect_back(:fallback_location => "/", :notice => "Volunteer activity log created successfully.")
      end
    else
      render("volunteer_activity_logs/new.html.erb")
    end
  end

  def edit
    @volunteer_activity_log = VolunteerActivityLog.find(params[:id])

    render("volunteer_activity_logs/edit.html.erb")
  end

  def update
    @volunteer_activity_log = VolunteerActivityLog.find(params[:id])

    @volunteer_activity_log.volunteer_id = params[:volunteer_id]
    @volunteer_activity_log.task_id = params[:task_id]

    save_status = @volunteer_activity_log.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/volunteer_activity_logs/#{@volunteer_activity_log.id}/edit", "/update_volunteer_activity_log"
        redirect_to("/volunteer_activity_logs/#{@volunteer_activity_log.id}", :notice => "Volunteer activity log updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Volunteer activity log updated successfully.")
      end
    else
      render("volunteer_activity_logs/edit.html.erb")
    end
  end

  def destroy
    @volunteer_activity_log = VolunteerActivityLog.find(params[:id])

    @volunteer_activity_log.destroy

    if URI(request.referer).path == "/volunteer_activity_logs/#{@volunteer_activity_log.id}"
      redirect_to("/", :notice => "Volunteer activity log deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Volunteer activity log deleted.")
    end
  end
end
