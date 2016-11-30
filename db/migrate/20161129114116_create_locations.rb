class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :photo_array
      t.string :description

      t.timestamps null:false
    end
  end
end
