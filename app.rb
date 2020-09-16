require 'sinatra/base'
require 'Player'

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
    @hp1 = 50
    @hp2 = 50
    erb(:play)
  end

  post "/attack" do
    @name1 = $name1.name
    @name2 = $name2.name
    erb(:attack)
  end

  run! if app_file == $0
end