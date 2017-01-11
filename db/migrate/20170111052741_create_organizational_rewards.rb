class CreateOrganizationalRewards < ActiveRecord::Migration
  def change
    create_table :organizational_rewards do |t|
      t.integer :organization_id
      t.integer :reward_id

      t.timestamps

    end
  end
end
