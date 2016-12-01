users = 20.times.map do
  User.create!( :username  => Faker::Internet.user_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end

itineraries = 20.times.map do
  Itinerary.create!( :user_id => rand(1..20),
                    :name => Faker::Address.city)
end

locations = 20.times.map do
  Location.create!( :name => Faker::Address.city,
                    :address => Faker::Address.street_address,
                    :itinerary_id => rand(1..20),
                    :user_id => rand(1..20))
end
