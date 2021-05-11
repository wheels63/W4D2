class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        # @null_piece = maybe calling nullpiece class
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

end