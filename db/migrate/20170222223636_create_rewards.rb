class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :reward_name
      t.string :reward_link

      t.timestamps

    end
  end
end
