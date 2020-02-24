require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "!g7y3?HT6qee9KN^V9Ywxm"
  end
  
  get '/' do 
    @session = session
    erb :index
  end 
  
  post '/checkout' do
    @item = params[:item]
    session["item"] = "#{params[:item]}"
    
    
    erb :checkout
  end 
  
  
end