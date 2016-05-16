require 'sinatra/base'

class BnByte4 < Sinatra::Base
  get '/' do
    'Hello BnByte4!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
