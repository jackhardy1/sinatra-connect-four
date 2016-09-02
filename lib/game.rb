require_relative 'rules.rb'
require_relative 'grid.rb'

class Game

  attr_accessor :grid, :player_in_turn, :players

  def initialize grid = Grid.new, rules = Rules.new
    @rules = rules
    @grid = grid
    @players = [1,2]
  end

  def self.create grid
    @game = Game.new grid
  end

  def self.instance
    @game
  end

  def drop row
    raise "Row #{row} is full. Please choose another!" if no_space? row
    fill_spot row
    check_win
    @players.rotate!(1) unless check_win
  end

  def print_board
    @grid.rows.transpose.reverse.each do |row|
      puts row.join(" ")
    end
  end

  def current_player
    @players[0]
  end

  def check_win
    @rules.four_in_a_horizontal_line? @grid.rows or
    @rules.four_in_a_vertical_line? @grid.rows
  end

  private

  def no_space? row
    @grid.rows[row-1].index { |o| o == "x" } == nil
  end

  def fill_spot row
    unfilled_index = @grid.rows[row-1].index { |o| o == "x" }
    @grid.rows[row-1][unfilled_index] = @players[0]
  end
end

a = Game.new
a.drop(1)
p a.grid.rows
