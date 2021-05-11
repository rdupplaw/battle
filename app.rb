require 'rack'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:'Player 1 Name'])
    $player2 = Player.new(params[:'Player 2 Name'])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @attacked = session[:attacked]
  erb :play
  end

  post '/attack' do
    session[:attacked] = true
    redirect '/play'
  end
end

