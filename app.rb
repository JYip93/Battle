require 'sinatra/base'
require './lib/Player'
require './lib/Game'

class Battle < Sinatra::Base

enable :sessions


  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new(params[:name1], params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @name1 = $game.player1.name
    @name2 = $game.player2.name
    @hp1 = $game.player1.hp
    @hp2 = $game.player2.hp
    erb(:play)
  end

  post "/attack" do
    @name1 = $game.player1.name
    @name2 = $game.player2.name
    @hp1 = $game.player1.hp
    @hp2 = $game.attack($game.player2)
      erb(:attack)
  end


  get "/attack" do
    
  end
  

  run! if app_file == $0
end