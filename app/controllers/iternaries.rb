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
