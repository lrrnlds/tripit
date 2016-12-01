class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursions do |t|
      t.integer :iternary_id
      t.integer :location_id

      t.timestamps null:false
    end
  end
end
