class Location < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :excursion
end
