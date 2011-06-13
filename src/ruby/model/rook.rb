module Model
  class Rook < Figure
     def name
       "rook"
     end
     def validate_move move
         if move.offset_col==0 #move vertical
              return $chessboard.check_vertical_positions_between move
         elsif move.offset_row==0 #move horizontal
              return $chessboard.check_horizontal_positions_between move
         end
         return false
     end
  end
end
