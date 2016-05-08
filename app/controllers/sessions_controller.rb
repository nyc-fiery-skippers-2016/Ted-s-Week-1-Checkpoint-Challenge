#Logging in
get '/login' do
  erb :'sessions/login'
end

post '/login' do
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    # erb :'users/user.id'
    redirect "/users/#{user.id}"
  else
    redirect '/login'
  end
end

#Logging out
get '/logout' do
  session.clear
  redirect '/'
end
