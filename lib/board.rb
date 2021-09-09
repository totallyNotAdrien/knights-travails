class Board
  attr_accessor :board

  def initialize(rows = 8, cols = 8)
    @board = Array.new(rows) { Array.new(cols) }
    @board.each_index {|j| @board[j].each_index{@board[j][i] = }}
  end
end
