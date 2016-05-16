class BnByte4 < Sinatra::Base
  get '/' do            
    erb :'spaces/index'   
  end
  
  # post '/spaces' do       
  #   Peep.create(user: current_user, content: params[:content], time: Time.now)       
  #   redirect '/'   
  # end 
end 