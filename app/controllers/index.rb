# get '/' do
#   client = GooglePlaces::Client.new('AIzaSyADVxtkjVmDegHPCmnSmGERwuQDE-12MwM')
#   #@client.spots(-33.8670522, 151.1957362)
#   p @pizza = client.spots_by_query('Pizza near Miami Florida').first
#   @pizza
#   @name = @pizza.name
#   @pizza.formatted_address
# #   @url = @pizza.photos[0].fetch_url(800) #to find photos, url
# #   erb :index
# # <%= @pizza.name %><br>
# # <%= @pizza.formatted_address %><br>
# # <a href='<%= @url %>'>photo</a><br>
# end
#
get '/' do
  redirect '/iternaries'
end

get '/session-viewer' do
  p session
end

get '/session-clearer' do
  p session
  session.clear
  p session
end
