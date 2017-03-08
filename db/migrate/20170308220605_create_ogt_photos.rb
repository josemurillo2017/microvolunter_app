class CreateOgtPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :ogt_photos do |t|
      t.integer :org_task_id
      t.integer :photo_logo_id

      t.timestamps
    end
  end
end
