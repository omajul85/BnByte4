class BnByte4 < Sinatra::Base
  get '/' do
    @spaces = Space.all
    erb :'spaces/index'
  end

  post '/spaces' do
    Space.create(user: current_user, name: params[:name], description: params[:description],
    	price: params[:price], available_from: params[:available_from],
    	available_to: params[:available_to])
    redirect '/'
  end

  get '/spaces/new' do
    erb :'/spaces/new'
  end

  post '/spaces/filtered' do
    @date_from = Date.parse(params[:available_from])
    @date_to = Date.parse(params[:available_to])
    @array_of_spaces = Space.all
    @array_of_spaces.select! do |space|
      space.available_from >= @date_from && space.available_to <= @date_to
    end
    p @array_of_spaces
    redirect '/'
  end

  get '/spaces/request' do
    @space_id = params[:space_id]
    @space = Space.get(@space_id)
    "Hello world" + @space_id.to_s
    erb :'/spaces/request'
  end
end