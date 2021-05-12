module Slideable
    
    HORIZONTAL_DIRS = [[1,0], [0,1], [-1,0], [0,-1]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [-1,-1], [1,-1]]
    # + moves
    # moves array that has all possible moves of the piece from the position you are at

    def moves(pos)
        dx = pos[0]
        dy = pos[1]
        possible_moves = [] 
        possible_moves << grow_unblocked_moves_in_dire(dx,dy)
    end
    
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    # - moves_dirs (overwritten by subclass)
    # which valid direction for this piece
    # return HORIZONTAL_DIRS
    # (1,0) (0,1) (-1,0) (0,-1)
    # return DIAGONAL_DIRS for biship
    # return both for queen
    # raise implement or not implement

    def moves_dirs
        horizontal_dirs
        diagonal_dirs
    end 

    # - grow_unblocked_moves_in_dire(dx,dy)
    # until reaches edge or piece, color of piece
    # then shovel each into the moves array

    def grow_unblocked_moves_in_dire(color, pos)
        pos[0] = dx
        pos[1] = dy
        
        moves = []

        until !(0...8).include?(dx) || !(0...8).include?(dy) || Board.grid[pos] != Board.null_piece && !color
            
            # - iterate horizontal_dirs, grab direction, add to x and y, individually
            # - shovel to moves array every time we increment or decrement x and y
            
            i = 0

            while i < #limiter
                shovel_x = dx + i
                shovel_y = dy + i

                
                # how to add x to dx

                # how to add y to dy
                # and then shovel to move arr
            end

            # - iterate diagonal_dirs, grab direction, add to x and y, individually
            # - shovel to moves array every time we increment or decrement x and y
            
            moves << # each viable pos
        end
    end

end
=begin
array of moves piece can move to given current configuration of board

----------------
getter methods
+ horizontal_dirs (color, end_pos) left or right or up or down
+ diagonal_dirs (color, end_pos) left or right or up or down

+ moves
    moves array that has all possible moves of the piece from the position you are at
- moves_dirs (overwritten by subclass)
    which valid direction for this piece
    return HORIZONTAL_DIRS
    (1,0) (0,1) (-1,0) (0,-1)
    return DIAGONAL_DIRS for biship
    return both for queen
    raise implement or not implement
- grow_unblocked_moves_in_dire(dx,dy)
    until reaches edge or piece, color of piece
        then shovel each into the moves array
=end