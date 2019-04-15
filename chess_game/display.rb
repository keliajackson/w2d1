require_relative "cursor.rb"

class Display
    attr_reader :board
    def initialize
        @cursor = Cursor.new([0,0], board)
        @board = Board.new
    end

    def render
       p @board 
    end
end