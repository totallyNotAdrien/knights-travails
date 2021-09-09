require_relative "node.rb"

class Board
  attr_accessor :board

  def initialize(rows = 8, cols = 8)
    @board = Array.new(rows) { Array.new(cols) }

    @board.each_index do |j|
      @board[j].each_index do |i|
        @board[j][i] = Node.new(i,j,rows,cols)
      end
    end
  end

  def [](index)
    @board[index]
  end
end
