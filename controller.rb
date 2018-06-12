require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload('models/*')

get '/' do
  erb (:home)
end

get '/game/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @winning_hand = game.play_game()
  @winning_player = game.return_winner()
  erb(:result)
end
