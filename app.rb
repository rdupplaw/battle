require 'rack'
require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:'Player 1 Name']
    session[:player2] = params[:'Player 2 Name']
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @attacked = session[:attacked]
  erb :play
  end

  post '/attack' do
    session[:attacked] = true
    redirect '/play'
  end
end

