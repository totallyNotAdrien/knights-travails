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

  def knight_moves(start, destination)
    visited = []
    queue = []
    curr = board[start[0]][start[1]]
    until curr.position == destination
      visited << curr
      curr.visit
      curr.moves.each do |(y,x)|
        node = board[y][x]
        queue << [y,x] unless node.visited
      end
#--------------------------------------------
      pos = queue.shift
      y = pos[0]
      x = pos[1]
      curr = board[y][x]
    end
  end


end
