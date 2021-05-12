module Slideable
    def moves

    end
=begin

- HORIZONTAL_DIRS: Array (includes vertical directions as well)
: this array should include directions a piece can make horizontally and vertically
: how far it can go (ex) if origin 0,0 => max moveable spaces will be (0,7) or (7,0))
- DIAGONAL_DIRS: Array
: this array should include directions a piece can make diagonally
: how far it can go (ex) if origin 0,0 => max moveable spaces will be (7,7))

----------------
# Possible issues: 
This pseudocode only works if we start at 0,0 position of chess grid
Not sure what to do for opponent.

+ horizontal_dirs
: if left / right: increment or decrement columns (rows are untouched)
: if up / down: increment or decreement rows (cols are untouched)
+ diagonal_dirs
: if up left: increment row, decrement col
: if up right: increment row, increment col
: if down left: decrement row, decrement col
: if down right: decrement row, increment col
+ moves
- moves_dirs (overwritten by subclass)
- grow_unblocked_moves_in_dire(dx,dy)

=end
end