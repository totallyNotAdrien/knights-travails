class Knight
  attr_reader :position, :moves, :board_rows, :board_cols, :parent

  def initialize(row, col, board_rows, board_cols, parent = nil)
    @position = [row, col]
    @board_rows = board_rows
    @board_cols = board_cols
    @moves = setup_moves
    @parent = parent
  end

  def ==(other)
    @position == other.position &&
    @board_rows == other.board_rows &&
    @board_cols == other.board_cols
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
