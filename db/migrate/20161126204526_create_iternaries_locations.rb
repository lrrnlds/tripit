class CreateIternariesLocations < ActiveRecord::Migration
  def change
    create_table :iternaries_locations do |t|
      t.integer :iternary_id
      t.integer :location_id

      t.timestamps null:false
    end
  end
end
