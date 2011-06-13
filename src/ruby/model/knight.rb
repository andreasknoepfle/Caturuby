class Knight < Figure
    def validate_move offset_x,offset_y
      move = super
      more_horizontal = (offset_x.abs == 2 && offset_y.abs ==1)
      more_vertical = (offset_x.abs == 1 && offset_y.abs == 2)
      move && (more_horizontal || more_vertical)
    end
end
