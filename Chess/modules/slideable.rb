module Slideable
    def moves

    end
=begin
array of moves piece can move to given current configuration of board

- HORIZONTAL_DIRS: Array (includes vertical directions as well)
: this array should include directions a piece can make horizontally and vertically
: how far it can go (ex) if origin 0,0 => max moveable spaces will be (0,7) or (7,0))

horz_vert_arr =
[(0,1), (0,2), (0,3), (0,4), (0,5), (0,6), (0,7), (1,0), (2,0), (3,0), (4,0), (5,0), (6,0) (7,0),
(0,-1), (0,-2), (0,-3), (0,-4), (0,-5), (0,-6), (0,-7), (-1,0), (-2,0), (-3,0), (-4,0), (-5,0), (-6,0) (-7,0)]

(1,0) (0,1) (-1,0) (0,-1)

(5,3) -> (7,3)
(7,3) - (5,3) = (2,0)
horz_vert_arr.include?([2,0]) = true

(5,3) -> (7,4)
(7,4) - (5,3) = (2,1)
horz_vert_arr.include?([2,1]) = false

(5,3) -> (3,3)
(3,3) - (5,3) = (-2,0)
horz_vert_arr.include?([-2,0]) = true

- DIAGONAL_DIRS: Array
: this array should include directions a piece can make diagonally
: how far it can go (ex) if origin 0,0 => max moveable spaces will be (7,7))

diag_arr =
[(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (-1,1), (-2,2), (-3,3), (-4,4), (-5,5), (-6,6), (-7,7),
(-1,-1), (-2,-2), (-3,-3), (-4,-4), (-5,-5), (-6,-6), (1,-1), (2,-2), (3,-3), (4,-4), (5,-5), (6,-6), (7,-7)]

----------------
# Possible issues: 
This pseudocode only works if we start at 0,0 position of chess grid, valid_pos?
Not sure what to do for opponent
    - flip directions when opponent turn
    - if white, direction stays the same, left is left
    - if black, direction inverses, left is right

getter methods
+ horizontal_dirs (color, end_pos) left or right or up or down
: if color b flip direction else dont do anything
: if left / right: increment or decrement columns (rows are untouched)
: if up / down: increment or decreement rows (cols are untouched)
+ diagonal_dirs (color, end_pos) left or right or up or down
: if color b flip direction else dont do anything
: if up left: increment row, decrement col
: if up right: increment row, increment col
: if down left: decrement row, decrement col
: if down right: decrement row, increment col
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
end