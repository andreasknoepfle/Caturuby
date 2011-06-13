module Model
  class Bishop < Figure
    def name
      "bishop"
    end
    def validate_move move
      something_between = $chessboard.check_diagonal_positions_between move
      move.offset_col.abs==move.offset_row.abs && something_between
    end
  end
end
