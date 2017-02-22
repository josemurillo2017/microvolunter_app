class AddOrganizationalTaskCountToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :organizational_tasks_count, :integer
  end
end
