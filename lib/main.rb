require_relative "board.rb"

board = Board.new

def random_path(board)
  y = rand(board.rows)
  x = rand(board.cols)
  y2 = rand(board.rows)
  x2 = rand(board.cols)
  puts "Path from (#{y},#{x}) to (#{y2},#{x2}): #{board.knight_moves([y, x], [y2, x2])}"
end

puts "Path from (0,0) to (3,3): #{board.knight_moves([0, 0], [3, 3])}"
puts "Path from (0,0) to (6,6): #{board.knight_moves([0, 0], [6, 6])}"
puts "Path from (1,6) to (3,1): #{board.knight_moves([1, 6], [3, 1])}"
random_path(board)
random_path(board)
random_path(board)
