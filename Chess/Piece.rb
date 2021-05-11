class Piece
    # use this class to make instances
    # each instance is a piece
    # each peice has a color, position

    Symbol

    def initialize(color, board, array)
        @color = color
        @board = board # why board?
        @pos = array
    end

    def to_s(int)
        # int.to_s ???
    end

    def empty?
    end

    def valid_moves?
    end

    def pos=(val)
    end

    def move_into_check?(end_pos)
    end

end