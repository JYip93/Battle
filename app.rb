require 'sinatra/base'
require './lib/Player'
require './lib/Game'

class Battle < Sinatra::Base

enable :sessions


  get "/" do
    erb(:index)
  end

  post "/names" do
    $name1 = Player.new(params[:name1])
    $name2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @name1 = $name1.name
    @name2 = $name2.name
    @hp1 = $name1.hp
    @hp2 = $name2.hp
    erb(:play)
  end

  post "/attack" do
    @name1 = $name1.name
    @name2 = $name2.name
    @hp1 = $name1.hp
    @hp2 = $name1.attack($name2)
    erb(:attack)
  end

  run! if app_file == $0
end