require_relative "piece.rb"
require 'byebug'

class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(2) { Array.new(8, Piece.new) }
        @rows += Array.new(4) { Array.new(8, nil) }
        @rows += Array.new(2) { Array.new(8, Piece.new) }
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
end