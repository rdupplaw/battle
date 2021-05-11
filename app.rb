require 'rack'
require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game.rb'

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
    @player2hp = $player2.hp
    @attacked = session[:attacked]
  erb :play
  end

  post '/attack' do
    Game.new.attack($player2)
    session[:attacked] = true
    redirect '/play'
  end
end

