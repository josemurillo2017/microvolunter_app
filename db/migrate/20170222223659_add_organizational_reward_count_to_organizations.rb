class AddOrganizationalRewardCountToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :organizational_rewards_count, :integer
  end
end
