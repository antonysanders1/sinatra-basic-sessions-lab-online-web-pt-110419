require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "!g7y3?HT6qee9KN^V9Ywxm"
  end
  
  get '/' do 
    erb :index
  end 
  
  get '/checkout' do
    # session["item"] = "#{params[:]}"
    # @session = session
    
    # erb :checkout
  end 
  
  
end