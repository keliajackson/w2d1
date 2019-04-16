require_relative "cursor.rb"
require_relative "board.rb"
require_relative "pieces/piece.rb"
require "colorize"

class Display
    attr_reader :board

    def initialize(board)
        @cursor = Cursor.new([0,0], board)
        @board = board
    end

    def render
       puts "   #{(0..7).to_a.join("   ")}"
       @board.rows.each_with_index do |row, i|
            row_elements = []
            row.each_with_index do |col, j|
                if col.is_a?(Nullpiece)
                    row_elements << Nullpiece.to_s
                # elsif col.is_a?(Nullpiece) && @cursor.cursor_pos == [i, j]
                #     row_elements << Nullpiece.to_s.colorize
                elsif col.is_a?(Piece)
                    row_elements << Piece.to_s
                # elsif col.is_a?(Piece) && @cursor.cursor_pos == [i, j]
                #     row_elements << Piece.to_s.colorize
                end
            end
            puts "#{i} #{row_elements.join(" ")}"
        end
    end
end