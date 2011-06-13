class King < Figure
   def validate_move offset_x,offset_y
      move = super
      offset_x.abs <= 1 && offset_y.abs <=1 && move
  end
end
