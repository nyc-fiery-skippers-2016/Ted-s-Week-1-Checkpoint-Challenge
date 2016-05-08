#Signing up
get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect '/' #Where should I redirect?
  else
    @errors = @user.errors.full_messages
  end
end

get '/users/:id' do
  @user = User.find(params[:id])

  @total_price_per_month = @user.channels.reduce(0){|sum, channel| sum += channel.price_per_month}

  erb :'users/show'
end


