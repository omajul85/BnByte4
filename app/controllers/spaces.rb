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
end