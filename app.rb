require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "my_session_secret"
  end
  
  get '/' do 
    erb :index
  end 
  
  get '/checkout' do
    session["item"] = "#{params[:]}"
    @session = session
    
    erb :checkout
  end 
  
  
end