require 'sinatra/base'


class Battle < Sinatra::Base

enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect to('/play')
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
<<<<<<< HEAD
    @hp1 = 50
    @hp2 = 50
=======
>>>>>>> 7fb41bca17706a0ec83bb24449b348e696b6fc36
    erb(:play)
  end

  run! if app_file == $0
end