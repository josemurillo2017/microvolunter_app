class CreateOrganizationalTasks < ActiveRecord::Migration
  def change
    create_table :organizational_tasks do |t|
      t.integer :organization_id
      t.integer :task_id
      t.integer :limit_tasks

      t.timestamps

    end
  end
end
