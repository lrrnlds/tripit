class IternaryLocation < ActiveRecord::Base
  # Remember to create a migration!
  has_many :iternary
  has_many :location
end
