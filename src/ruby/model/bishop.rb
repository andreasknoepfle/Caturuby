class Bishop < Figure
  def validate_move offset_x,offset_y
    move = super
    offset_y.abs==offset_x.abs && move
  end
end
