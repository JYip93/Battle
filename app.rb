require 'sinatra/base'
require './lib/Player'
require './lib/Game'

class Battle < Sinatra::Base

enable :sessions


  get "/" do
    erb(:index)
  end

  post "/names" do
    @game = Game.build(params[:name1], params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @game = Game.make_instance
    $game.set_losing_message
    erb(:play)
  end

  post "/attack" do
    @game = Game.make_instance
   # @hp1 = $game.player1.hp
    $game.switch_turns
    $game.attack($game.current_player)
    
      erb(:attack)
    
  end


  get "/attack" do
    
  end
  

  run! if app_file == $0
end