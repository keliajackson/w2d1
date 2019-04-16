module Slideable
horizonal = [1,0], [0,1], [-1, 0], [0,-1]
diagonal = [1,1], [1,-1], [-1,1], [-1,-1]   

def moves(start_pos)
    possibles_moves = []
    @directions.each do |change|
        temp_pos = start_pos
        while temp_pos.is_valid?
            t_row, t_col = temp_pos[0], temp_pos[1]
            c_row, c_col = change[0], change[1]
            possible_pos = [t_row + c_row, t_col + c_col]
            if (possible_pos).is_valid?
                possible_moves << possible_pos
                temp_pos = possible_pos 
            else
                break
            end
        end
    end
    possible_moves
end