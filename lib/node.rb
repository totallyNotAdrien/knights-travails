class Node
  attr_reader :visited

  def initialize(x_pos, y_pos, board_rows, board_cols)
    @position = [y_pos, x_pos]
    @visited = false
    @board_rows = board_rows
    @board_cols = board_cols
  end

  def potential_moves
    moves = []
    diffs = [[2, 1], [1, 2],
             [-1, 2], [-2, 1],
             [-2, -1], [-1, -2],
             [1, -2], [2, -1]]
    diffs.each do |diff|
      y = @position[0] + diff[0]
      x = @position[1] + diff[1]
      moves << [y, x] if y.between?(0, @board_rows) && x.between?(0, @board_cols)
    end
    moves
  end
end
