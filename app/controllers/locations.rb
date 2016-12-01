get'/locations/new' do

  #your code here
  if logged_in?
    erb :'locations/new'
  else
    redirect "sessions/new"
  end
end

get '/locations/:id' do
  if logged_in?
    @location = Location.find(params[:id])
    erb :'locations/show'
  else
    redirect "sessions/new"
  end
end


get '/locations/:id/edit' do
  @location = Location.find(params[:id])
  erb :'/locations/edit'
end

put '/locations/:id' do
  location = Location.find(params[:id])
  location.update_attributes(params[:location])
  redirect "/locations/#{location.id}"
end

delete '/locations/:id' do
  @location = Location.find(params[:id])
  iternary_id = @location.iternary_id
  @location.destroy

  redirect "iternaries/#{iternary_id}"
end

# post '/locations' do
#   @api_key = 'AIzaSyBrlI0pspDqOZ8sf4Dr25WtO1vp3C_Jx-E'
#   client = GooglePlaces::Client.new(@api_key)
#   @options = client.spots_by_query("#{params[:name]} near #{params[:city]} #{params[:state]}")
#   p @options.first
#   erb :"locations/options"
# end

# post '/locations' do
#   p params.inspect
# end
