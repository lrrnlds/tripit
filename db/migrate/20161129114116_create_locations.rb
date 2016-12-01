class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :photo_array
      t.string :description
      t.integer :itinerary_id
      t.integer :user_id

      t.timestamps null:false
    end
  end
end
