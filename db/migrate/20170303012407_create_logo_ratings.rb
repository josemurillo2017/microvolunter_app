class CreateLogoRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :logo_ratings do |t|
      t.integer :logo_id
      t.integer :volunteer_id
      t.integer :rating

      t.timestamps
    end
  end
end
