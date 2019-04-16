require_relative "pieces/piece.rb"
require_relative "pieces/nullpiece.rb"
require 'byebug'

class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8) { Array.new(8) }
        set_board
    end
    
    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        start = self[start_pos]
        fin = self[end_pos]

        if start.nil?
            raise "No piece at start position."
        end

        unless fin.nil?
            raise "Invalid end position."
        end

        self[start_pos], self[end_pos] = fin, start
    end

    def valid_pos?(pos)
        row, col = pos
        return false if row < 0 || row > 7 || col < 0 || col > 7
        return true
    end

    def set_board
        add_pieces(2, 5, Nullpiece.new)
        add_pieces(0, 1, Piece.new)
        add_pieces(6, 7, Piece.new)
    end
    
    def add_pieces(start_row, end_row, piece)
        @rows[start_row..end_row].each_with_index do |row, i|
            row.each_with_index do |col, j|
                @rows[start_row + i][j] = piece
            end
        end
    end
end