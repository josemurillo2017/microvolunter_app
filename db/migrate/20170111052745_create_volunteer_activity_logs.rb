class CreateVolunteerActivityLogs < ActiveRecord::Migration
  def change
    create_table :volunteer_activity_logs do |t|
      t.integer :volunteer_id
      t.integer :task_id

      t.timestamps

    end
  end
end
