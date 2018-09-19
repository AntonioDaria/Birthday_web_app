require 'sinatra/base'

class Birthday < Sinatra::Base

enable :session

  get '/home' do
    erb :index
  end

end
