module Model
  class Knight < Figure
      def name
        "knight"
      end
      def validate_move move
        more_horizontal = (move.offset_row.abs == 2 && move.offset_col.abs ==1)
        more_vertical = (move.offset_row.abs == 1 && move.offset_col.abs == 2)
        more_horizontal || more_vertical
      end
  end
end