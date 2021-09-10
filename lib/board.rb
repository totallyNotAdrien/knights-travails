require_relative "knight.rb"

class Board
  attr_reader :rows, :cols

  def initialize(rows = 8, cols = 8)
    @rows = rows
    @cols = cols
  end

  def knight_moves(start, destination)
    visited = []
    queue = []

    curr = Knight.new(start[0], start[1], @rows, @cols)

    until curr.position == destination
      visited << curr unless visited.include?(curr)

      curr.moves.each do |(y, x)|
        knight = Knight.new(y, x, rows, cols, curr)
        queue << knight unless visited.include?(knight) || queue.include?(knight)
      end

      curr = queue.shift
    end

    path = []
    while curr.parent
      path << curr.position
      curr = curr.parent
    end

    path << curr.position
    path.reverse
  end
end
