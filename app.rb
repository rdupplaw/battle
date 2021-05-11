require 'rack'
require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:'Player 1 Name']
    @player2 = params[:'Player 2 Name']
    erb :play
  end
end

