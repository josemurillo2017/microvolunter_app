class RewardsController < ApplicationController
  def index
    @q = Reward.ransack(params[:q])
    @rewards = @q.result(:distinct => true).includes(:organizationalrewards).page(params[:page]).per(10)

    render("rewards/index.html.erb")
  end

  def show
    @organizational_reward = OrganizationalReward.new
    @reward = Reward.find(params[:id])

    render("rewards/show.html.erb")
  end

  def new
    @reward = Reward.new

    render("rewards/new.html.erb")
  end

  def create
    @reward = Reward.new

    @reward.reward_name = params[:reward_name]
    @reward.reward_link = params[:reward_link]

    save_status = @reward.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rewards/new", "/create_reward"
        redirect_to("/rewards")
      else
        redirect_back(:fallback_location => "/", :notice => "Reward created successfully.")
      end
    else
      render("rewards/new.html.erb")
    end
  end

  def edit
    @reward = Reward.find(params[:id])

    render("rewards/edit.html.erb")
  end

  def update
    @reward = Reward.find(params[:id])

    @reward.reward_name = params[:reward_name]
    @reward.reward_link = params[:reward_link]

    save_status = @reward.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rewards/#{@reward.id}/edit", "/update_reward"
        redirect_to("/rewards/#{@reward.id}", :notice => "Reward updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Reward updated successfully.")
      end
    else
      render("rewards/edit.html.erb")
    end
  end

  def destroy
    @reward = Reward.find(params[:id])

    @reward.destroy

    if URI(request.referer).path == "/rewards/#{@reward.id}"
      redirect_to("/", :notice => "Reward deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Reward deleted.")
    end
  end
end
