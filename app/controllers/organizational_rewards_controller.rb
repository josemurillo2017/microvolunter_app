class OrganizationalRewardsController < ApplicationController
  def index
    @organizational_rewards = OrganizationalReward.page(params[:page]).per(10)

    render("organizational_rewards/index.html.erb")
  end

  def show
    @organizational_reward = OrganizationalReward.find(params[:id])

    render("organizational_rewards/show.html.erb")
  end

  def new
    @organizational_reward = OrganizationalReward.new

    render("organizational_rewards/new.html.erb")
  end

  def create
    @organizational_reward = OrganizationalReward.new

    @organizational_reward.organization_id = params[:organization_id]
    @organizational_reward.reward_id = params[:reward_id]

    save_status = @organizational_reward.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/organizational_rewards/new", "/create_organizational_reward"
        redirect_to("/organizational_rewards")
      else
        redirect_back(:fallback_location => "/", :notice => "Organizational reward created successfully.")
      end
    else
      render("organizational_rewards/new.html.erb")
    end
  end

  def edit
    @organizational_reward = OrganizationalReward.find(params[:id])

    render("organizational_rewards/edit.html.erb")
  end

  def update
    @organizational_reward = OrganizationalReward.find(params[:id])

    @organizational_reward.organization_id = params[:organization_id]
    @organizational_reward.reward_id = params[:reward_id]

    save_status = @organizational_reward.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/organizational_rewards/#{@organizational_reward.id}/edit", "/update_organizational_reward"
        redirect_to("/organizational_rewards/#{@organizational_reward.id}", :notice => "Organizational reward updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Organizational reward updated successfully.")
      end
    else
      render("organizational_rewards/edit.html.erb")
    end
  end

  def destroy
    @organizational_reward = OrganizationalReward.find(params[:id])

    @organizational_reward.destroy

    if URI(request.referer).path == "/organizational_rewards/#{@organizational_reward.id}"
      redirect_to("/", :notice => "Organizational reward deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Organizational reward deleted.")
    end
  end
end
