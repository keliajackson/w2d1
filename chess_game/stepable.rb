module Stepable
    def moves(start_pos)
        possible_moves = []
        @directions.each do |change|
            start_row, start_col = start_pos[0], start_pos[1] 
            c_row, c_col = change[0], change[1]
            possible_pos = [start_row + c_row, start_col + c_col] 
            if is_valid?(possible_pos)
                possible_moves << possible_pos
            else
                next
            end
        end
        possible_moves    
    end

     def is_valid?(pos)
        if pos[0] > 7 || pos[0] < 0 || pos[1] > 7 || pos[1] < 0
            return false
        end
        true
    end
end 