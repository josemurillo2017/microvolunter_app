class AddFirstNameToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :first_name, :string
    add_column :organizations, :last_name, :string
  end
end
