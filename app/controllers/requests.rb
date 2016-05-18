class BnByte4 < Sinatra::Base
  post '/requests/new' do
    space = Space.get(params[:space_id])
    request = Request.create(
      date_from: params[:request_from],
      date_to: params[:request_to],
      user_id: current_user.id,
      space_id: params[:space_id],
      owner_id: params[:owner_id]
      )
    puts request
    if request.saved?
      redirect('/requests')
    end
  end

  get '/requests' do
    user = User.get(current_user.id)
    @request = user.requests
    erb :'/requests/requests'
  end
end