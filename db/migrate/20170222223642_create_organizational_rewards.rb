class CreateOrganizationalRewards < ActiveRecord::Migration
  def change
    create_table :organizational_rewards do |t|
      t.integer :organization_id
      t.integer :reward_id
      t.integer :assigned_points

      t.timestamps

    end
  end
end
