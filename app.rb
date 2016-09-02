require 'sinatra'
require 'sinatra/flash'
require_relative './lib/game'
require_relative './lib/grid'
require_relative './lib/rules'

get '/' do
  erb :index
end

post '/' do
  grid = Grid.new
  columns = params[:columns].to_i
  rows = params[:rows].to_i
  grid.set_grid_size(rows,columns)
  @game = Game.create(grid)
  redirect '/play'
end

get '/play' do
  @game = Game.instance
  @win = @game.check_win
  @current_player = @game.current_player
  @grid = @game.grid.rows.transpose.reverse
  erb :play
end

post '/play' do
  @game = Game.instance
  if (params[:row].to_i) > @game.grid.rows.length
    flash.now[:error] = "Wrong grid selected"
  else
    input = params[:row].to_i
    @game.drop(input)
  end
  redirect '/play'
end
