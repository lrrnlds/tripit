class Excursion < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :iternary, foreign_key: "iternary_id"
  belongs_to :location, foreign_key: "location_id"
end
