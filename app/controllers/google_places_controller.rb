get '/google_places' do
  erb :"/find"
end

post '/google_places' do
  p params
  @api_key = 'AIzaSyBrlI0pspDqOZ8sf4Dr25WtO1vp3C_Jx-E'
  client = GooglePlaces::Client.new(@api_key)
  @options = client.spots_by_query("#{params[:name]} near #{params[:city]} #{params[:state]}")
  p @options.first
  erb :"options"
end
