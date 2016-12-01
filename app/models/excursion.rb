class Excursion < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :iternary
  has_many :location
end
