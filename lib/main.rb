require_relative "board.rb"

class Test
  attr_reader :board

  def initialize
    @board = Board.new
  end
end