class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :organizational_id
      t.string :link

      t.timestamps

    end
  end
end
