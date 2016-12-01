get '/iternaries' do
  erb :'/iternaries/index'
end

get'/iternaries/new' do
  if logged_in?
    erb :'iternaries/new'
  else
    redirect "sessions/new"
  end
end


post '/iternaries' do
  if logged_in?
    new_iternary = current_user.iternary.new(params[:iternary])
    if new_iternary.save
      redirect "iternaries/#{new_iternary.id}"
    else
      erb :'iternaries/new'
    end
  else
    redirect "sessions/new"
  end
end

get '/iternaries/:id' do
  if logged_in?
    @iternary = Iternary.find(params[:id])
    erb :'iternaries/show'
  else
    redirect "sessions/new"
  end
end

post '/iternaries/:id/locations/new' do
  p params.inspect
  if logged_in?
    new_location = Location.new(params[:location])
    p new_location
    new_location.iternary_id = params[:id]
    new_location.user_id = current_user.id
      if new_location.save
        redirect "/iternaries/#{new_location.iternary_id}"
      else
        @erros = new_location.errors.full_message
      end

    else
      redirect "/sessions/new"
  end
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
