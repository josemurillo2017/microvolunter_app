class OrganizationalAbilityController < ApplicationController


  def add_task
    @potential_task = Task.all
    @old_organizational_task = current_organization.organizational_tasks.all
  end
  def add_reward
    @potential_reward = Reward.all
    @old_organizational_reward = current_organization.organizational_reward.all
  end
end
