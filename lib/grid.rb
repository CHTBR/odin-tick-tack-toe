# Class for storing and modifying information about the game grid
class Grid
  attr_reader :grid

  def initialize
    @grid = {
      A: Array.new(3, " "),
      B: Array.new(3, " "),
      C: Array.new(3, " ")
    }
  end

  def set_cell_value(cell_name, value)
    @grid[cell_name[0]][cell_name[1]] = value
  end

  def to_s
    string = "  | 0 | 1 | 2 |\n  | - | - | - |\n"
    @grid.each do |key, row|
      string << "#{key} | #{row[0]} | #{row[1]} | #{row[2]} |\n"
      string << "  | - | - | - |\n"
    end
    string
  end
end
