module Slideable
    
    def moves(start_pos)
        possible_moves = []
        @directions.each do |change|
            temp_pos = start_pos
            while is_valid?(temp_pos)
                t_row, t_col = temp_pos[0], temp_pos[1]
                c_row, c_col = change[0], change[1]
                possible_pos = [t_row + c_row, t_col + c_col]
                if is_valid?(possible_pos)
                    possible_moves << possible_pos
                    temp_pos = possible_pos 
                else
                    break
                end
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
