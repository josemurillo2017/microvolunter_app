class AddVolunteerActivityLogCountToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :volunteer_activity_logs_count, :integer
  end
end
