class AddOrganizationalTaskCountToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :organizational_tasks_count, :integer
  end
end
