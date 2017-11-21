require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/rock_paper_scissors'

get '/' do
  erb ( :home )
end

get '/home' do
  erb( :home )
end

get '/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  game = RockPaperScissors.new(player1,player2)
  @result = game.result
  erb( :result )
end
  # referee = {
  #   'rock' => {
  #     'rock' => 'Draw!!!',
  #     'paper' => 'Player 2 wins',
  #     'scissors' => 'Player 1 wins'
  #   },
  #   'paper' => {
  #     'rock' => 'Player 2 wins',
  #     'paper' => 'Draw!!!',
  #     'scissors' => 'Player 1 wins'
  #   },
  #   'scissors' => {
  #     'rock' => 'Player 2 wins',
  #     'paper' => 'Player 1 wins',
  #     'scissors' => 'Draw!!!'
  #   }
  # }
  # referee[player1][player2]
