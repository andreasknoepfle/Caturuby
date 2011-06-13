module Model
  class Pawn < Figure
     def name
        "pawn"
     end
     def validate_move move
       
       if move.color == Figure::BLACK
         if move.row == 1 && move.offset_row==2 && move.offset_col==0
           return true 
         elsif move.offset_row==1 && move.offset_col==0 && move.hit==false
           return true 
         elsif move.offset_row==1 && move.offset_col.abs==1 && move.hit==true
           return true 
         end
       else # White Figure
          if move.row == 6 && move.offset_row==-2 && move.offset_col==0
            return true 
          elsif move.offset_row==-1 && move.offset_col==0 && move.hit==false
            return true 
          elsif move.offset_row==-1 && move.offset_col.abs==1 && move.hit==true
            return true 
         end
       end
       return false
     end
  end
end
