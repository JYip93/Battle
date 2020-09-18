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
    @hp1 = $game.player1.hp
    @hp2 = $game.player2.hp
    erb(:play)
  end

  post "/attack" do
   # @hp1 = $game.player1.hp
    $game.attack($game.opponent)
    $game.switch_turns
      erb(:attack)
    
  end


  get "/attack" do
    
  end
  

  run! if app_file == $0
end