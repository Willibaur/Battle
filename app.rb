require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    if @game.player1.hit_points == 0 || @game.player2.hit_points == 0
      redirect '/lose'
    else
      erb :play
    end
  end

  get '/lose' do
    @game = $game
    erb :lose
  end

  get '/attack' do
    @game = $game
    active_player = @game.player_one_turn ? @game.player2 : @game.player1
    $game.attack(active_player)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
