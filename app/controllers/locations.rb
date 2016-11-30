get'/locations/new' do

  #your code here
  if logged_in?
    erb :'locations/new'
  elsee
    redirect "sessions/new"
  end
end

post '/locations' do
  @api_key = 'AIzaSyBrlI0pspDqOZ8sf4Dr25WtO1vp3C_Jx-E'
  client = GooglePlaces::Client.new(@api_key)
  @options = client.spots_by_query("#{params[:name]} near #{params[:city]} #{params[:state]}")
  p @options.first
  erb :"locations/options"
end
