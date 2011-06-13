module Controller
  class MoveControll
    def initialize
      @turn = Model::Figure::WHITE
    end
    def move from_row,from_col,to_row,to_col
      #determine color
      moved_figure=$chessboard.get_field(from_row,from_col)
     
      if moved_figure==nil
        # no figure dragged 
        return
      end
      moved_color=moved_figure.color
      if moved_color!=@turn
        return
      end
      move_ok = $chessboard.do_move from_row,from_col,to_row,to_col
      if move_ok
        next_turn
      end
    end
    def next_turn
      if @turn == Model::Figure::WHITE
        @turn = Model::Figure::BLACK
      else
        @turn = Model::Figure::WHITE
      end
    end
  end
end
