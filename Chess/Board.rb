class Board

    def initialize
        # @null_piece = maybe calling nullpiece class
        @rows = Array.new(8) {Array.new(8, @null_piece)}
        

    end

    def [](pos)
        row, col = pos
        @rows[row, col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row, col] = val
    end

    def move_piece(color, start_pos, end_pos)
        # start_pos has to have our piece
        # end-pos has to meet the valid_pos? method
        # what is color?


    end

        # if empty, valid
        # if pos is taken,
        #   if color is your own, invalid
        #   elsif color is opponent, valid
        # if 0 < pos.length of each pos indices < 8, valid
        # if pos is not possible for piece to move to in one turn, invalid
    def valid_pos?(pos)
        # pos[0].between(0, 7) && pos[1].between(0, 7)
        return false if !(0...8).include?(pos[0]) || !(0...8).include?(pos[1])
        return false if !@rows[pos].nil?

        true
    end

    def add_piece(piece, pos)
        @rows[pos] = piece if valid_pos?(pos)
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end
 
    def find_king(color) # finds the position of the king
        @rows.each do |row|
            row.each do |col|
                [row,col] = pos
                return pos if @rows[pos] == king.color # king.color might be an issue?
            end
        end
    end

    def pieces
        # this is for adding pieces in default position
        # to populate the board
    end

    def dup
        @rows.dup
    end

    def move_piece!(color, start_pos, end_pos)

    end
end