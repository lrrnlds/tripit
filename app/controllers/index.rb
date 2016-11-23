get '/' do
  client = GooglePlaces::Client.new('AIzaSyADVxtkjVmDegHPCmnSmGERwuQDE-12MwM')
  #@client.spots(-33.8670522, 151.1957362)
  pizza = client.spots_by_query('Pizza near Miami Florida')
  p pizza
  erb :index
end

get '/session-viewer' do
  p session
end

get '/session-clearer' do
  p session
  session.clear
  p session
end
