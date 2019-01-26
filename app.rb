require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  # enable :sessions
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'

  end

  get '/play' do
    @player = $player.name
    erb(:play)
  end
end

#
# run! if app_file == $0
