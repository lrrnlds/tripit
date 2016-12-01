class Location < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :iternary
  belongs_to :user
end
