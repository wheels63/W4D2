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
        dx = pos[0]
        dy = pos[1]
        horz_moves = []
        diag_moves = []

        # until !(0...8).include?(dx) || !(0...8).include?(dy) || Board.grid[pos] != Board.null_piece && !color
            # - iterate horizontal_dirs, grab direction, add to x and y, individually
            # - shovel to moves array every time we increment or decrement x and y
        dup_x = dx.dup #3
        dup_y = dy.dup #5
        new_pos = pos.dup
        horizontal_dirs.each do |dir| #(0,1)
            until self.board.valid_pos?(new_pos) || self.board[new_pos]
                # if my color, we stop
                # if not my color, take that spot (shovel that position to moves)
                # if position is empty, take the spot

                # start_pos = (3,5)
                dup_x += dir[0] # 3 += 0 dup_x = 3
                dup_y += dir[0] # 5 += 1 dup_y = 6
                new_pos = [dup_x, dup_y] # (3,6)
                
                horz_moves << new_pos # [[4,5],[5,5],[6,5],[7,5],[3,6]]
            end #dup_x = 7 dup_y = 5
            dup_x = dx.dup #3
            dup_y = dy.dup #5
        end

        diagonal_dirs.each do |dir|
            until invalid
                dup_x += dir[0]
                dup_y += dir[0]
                new_pos = [dup_x, dup_y]
                diag_moves << new_pos
            end
            dup_x = dx.dup
            dup_y = dy.dup
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