module Model
  class King < Figure
     def name
       "king"
     end
     def validate_move move
          move.offset_row.abs <= 1 && move.offset_col.abs <=1
     end
  end
end