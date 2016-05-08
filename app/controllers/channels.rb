get '/channels/:id' do
  @channel = Channel.find(params[:id])
  erb :'channels/show'
end

delete 'channels/:id' do
  @channel = Channel.find(params[:id])
  redirect "/channels/#{channel.id}>"
end
