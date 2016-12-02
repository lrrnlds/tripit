get '/itineraries' do
  erb :'/itineraries/index'
end

get'/itineraries/new' do
  if logged_in?
    erb :'itineraries/new'
  else
    redirect "sessions/new"
  end
end


post '/itineraries' do
  p current_user
  if logged_in?
    new_itinerary = current_user.itinerary.new(params[:itinerary])
    if new_itinerary.save
      redirect "itineraries/#{new_itinerary.id}"
    else
      erb :'itineraries/new'
    end
  else
    redirect "sessions/new"
  end
end

get '/itineraries/:id' do
  if logged_in?
    @itinerary = Itinerary.find(params[:id])
    erb :'itineraries/show'
  else
    redirect "sessions/new"
  end
end

post '/itineraries/:id/locations/new' do
  p params.inspect
  if logged_in?
    new_location = Location.new(params[:location])
    p new_location
    new_location.itinerary_id = params[:id]
    new_location.user_id = current_user.id
      if new_location.save
        redirect "/itineraries/#{new_location.itinerary_id}"
      else
        @erros = new_location.errors.full_message
      end

    else
      redirect "/sessions/new"
  end
end

get '/itineraries/:id/edit' do
  @itinerary = Itinerary.find(params[:id])
  erb :'/itineraries/edit'
end

put '/itineraries/:id' do
  itinerary = Itinerary.find(params[:id])
  itinerary.update_attributes(params[:itinerary])
  redirect "/itineraries/#{itinerary.id}"
end

delete '/itineraries/:id' do
  @itinerary = Itinerary.find(params[:id])
  @itinerary.destroy

  redirect '/itineraries'
end

# get '/restaurants/:id/edit' do
#   @rs = Restaurant.find(params[:id])
#   erb :'/restaurants/edit'
# end
#
#
# put '/restaurants/:id' do
#   restaurant = Restaurant.find(params[:id])
#   restaurant.update_attributes(params[:restaurant])
#   redirect "/restaurants/#{restaurant.id}"
# end
#
#
# delete '/restaurants/:id' do
#   @rest = Restaurant.find(params[:id])
#   @rest.destroy
#
#   redirect '/restaurants'
# end
#
# post '/restaurants/:id/reviews/new' do
#   if logged_in?
#   new_review = Review.new(params[:review])
#   new_review.restaurant_id = params[:id]
#   new_review.user_id = current_user.id
#     if new_review.save
#       redirect "/restaurants/#{new_review.restaurant_id}"
#     else
#       @errors = new_review.errors.full_message
#     end
#   else
#     redirect "/nope"
#   end
# end
