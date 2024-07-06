# Class for managing start, end and flow of the game
require_relative "grid"
require_relative "input"
require_relative "round"

class Game
  def initialize
    @grid_manager = Grid.new
    @input_manager = Input.new(@grid_manager)
    @round_manager = Round.new(@grid_manager, @input_manager)
    @players = %w[X O]
  end

  def game_loop
    message = nil
    until message
      puts @grid_manager
      message = @round_manager.play_round(@players[0])
      @players.reverse!
    end
  end
end
