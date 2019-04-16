require_relative "cursor.rb"
require_relative "board.rb"
require_relative "colorize.rb"

class Display
    attr_reader :board

    def initialize
        @cursor = Cursor.new([0,0], board)
        @board = Board.new
    end

    def render
       puts "   #{(0..7).to_a.join("   ")}"
       @board.rows.each_with_index do |row, i|
            row_elements = []
            row.each do |square|
                if square.nil?
                    row_elements << '[ ]'
                else
                    row_elements << '{ }'
                end
            end
            puts "#{i} #{row_elements.join(" ")}"
        end
    end
end