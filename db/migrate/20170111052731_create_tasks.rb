class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_link
      t.string :assigned_points

      t.timestamps

    end
  end
end
