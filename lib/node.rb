class Node
  attr_reader :visited, :position, :moves

  def initialize(x_pos, y_pos, board_rows, board_cols)
    @position = [y_pos, x_pos]
    @visited = false
    @board_rows = board_rows
    @board_cols = board_cols
    @moves = setup_moves
  end

  def reset
    @visited = false
  end

  def visit
    @visited = true
  end

  private

  def setup_moves
    output = []
    diffs = [[2, 1], [1, 2],
             [-1, 2], [-2, 1],
             [-2, -1], [-1, -2],
             [1, -2], [2, -1]]
    diffs.each do |diff|
      y = @position[0] + diff[0]
      x = @position[1] + diff[1]
      output << [y, x] if y.between?(0, @board_rows) && x.between?(0, @board_cols)
    end
    output
  end
end
