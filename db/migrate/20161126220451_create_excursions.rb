class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursion do |t|
      t.integer :iternary_id
      t.integer :location_id

      t.timestamps
    end
  end
end
