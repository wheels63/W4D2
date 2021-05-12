module Slideable
    
    HORIZONTAL_DIRS = [[1,0], [0,1], [-1,0], [0,-1]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [-1,-1], [1,-1]]
    # + moves
    # moves array that has all possible moves of the piece from the position you are at

    def moves
        possible_moves = []
        moves_dirs.each do |dir|
            x, y = dir
            possible_moves += grow_unblocked_moves_in_dire(x,y)
        end
        possible_moves
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
        raise "Something went wrong"
    end 

    def grow_unblocked_moves_in_dire(dx,dy)
        arr = []
        until !self.board.valid_pos?(pos) || self.board[pos] != self.null_piece
            pos[0] += dx
            pos[1] += dy
            arr << pos
        end
        pos[0] += dx
        pos[1] += dy
        arr << pos if self.board[pos].color != self.color
        arr
    end

    # - grow_unblocked_moves_in_dire(dx,dy)
    # until reaches edge or piece, color of piece
    # then shovel each into the moves array

    # def grow_unblocked_moves_in_dire(dx,dy)
        # can access piece.rb pos because it is inherited

        # set new array?
        # until check if change is in board borders, empty, check piece if other color
        # do change in position using dx dy on pos from piece class

        # dx = pos[0]
        # dy = pos[1]
        # horz_moves = []
        # diag_moves = []

        # dup_x = dx.dup
        # dup_y = dy.dup
        # new_pos = pos.dup
        # horizontal_dirs.each do |dir|
        #     until !self.board.valid_pos?(new_pos) || self.board[new_pos] != self.null_piece
        #         dup_x += dir[0]
        #         dup_y += dir[1]
        #         new_pos = [dup_x, dup_y]
                
        #         horz_moves << new_pos
        #     end
        #     in_front_x = new_pos[0] + dir[0]
        #     in_front_y = new_pos[1] + dir[1]
        #     final_pos = [in_front_x, in_front_y]
        #     horz_moves << final_pos if self.board[final_pos].color != self.color #????????????

        #     dup_x = dx.dup
        #     dup_y = dy.dup
        #     new_pos = pos.dup
        # end

        # diagonal_dirs.each do |dir|
        #     until !self.board.valid_pos?(new_pos) || self.board[new_pos] != self.null_piece
        #         dup_x += dir[0]
        #         dup_y += dir[1]
        #         new_pos = [dup_x, dup_y]

        #         diag_moves << new_pos
        #     end
        #     in_front_x = new_pos[0] + dir[0]
        #     in_front_y = new_pos[1] + dir[1]
        #     final_pos = [in_front_x, in_front_y]
        #     diag_moves << final_pos if self.board[final_pos].color != self.color #????????????

        #     dup_x = dx.dup
        #     dup_y = dy.dup
        #     new_pos = pos.dup
        # end
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