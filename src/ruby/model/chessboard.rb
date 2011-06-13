require 'observer'
module Model
  class Chessboard
    include Observable
    def initialize
        create_figures
    end

    def get_field(row,col)
      @fields[row][col]
    end
    def do_move from_row,from_col,to_row,to_col
      new_field=get_field(to_row,to_col)
      moved_color=get_field(from_row,from_col).color
      hit=false
      if new_field!=nil
         if new_field.color==moved_color
           return false
         else
           hit=true
         end
      end
      move = Model::Move.new from_row,from_col,to_row,to_col,moved_color,hit
      moved_figure=get_field(move.row,move.col)
      move_ok = moved_figure.validate_move move
      if move_ok
        @fields[to_row][to_col]=@fields[from_row][from_col]
        @fields[from_row][from_col]=nil
        changed
        notify_observers from_row,from_col,to_row,to_col
      end
      return move_ok
    end

    def check_diagonal_positions_between move
       vertical_dir=move.offset_row/move.offset_row.abs
       horizontal_dir=move.offset_col/move.offset_col.abs
       for i in 1..(move.offset_row.abs-1) do
         for j in 1..(move.offset_col.abs-1) do
           if @fields[move.row+i*vertical_dir][move.col+j*horizontal_dir]!=nil
             return false
           end
         end
       end
       return true
    end
    def check_horizontal_positions_between move
      horizontal_dir=move.offset_col/move.offset_col.abs
      for i in 1..(move.offset_col.abs-1)
         if @fields[move.row][move.col+i*horizontal_dir]!=nil
            return false
         end
      end
      return true
    end
    def check_vertical_positions_between move
     vertical_dir=move.offset_row/move.offset_row.abs
      for i in 1..(move.offset_row.abs-1)
         if @fields[move.row+i*vertical_dir][move.col]!=nil
            return false
         end
      end
      return true
    end

    private
    def create_figures
       @fields = Array.new 8
      @fields.map! { Array.new 8 }
      for i in 0..7 do
        case i
        when 0,7:
            @fields[0][i]=Rook.new Figure::BLACK
            @fields[7][i]=Rook.new Figure::WHITE
        when 1,6
            @fields[0][i]=Knight.new Figure::BLACK
            @fields[7][i]=Knight.new Figure::WHITE
        when 2,5
            @fields[0][i]=Bishop.new Figure::BLACK
            @fields[7][i]=Bishop.new Figure::WHITE
        when 3
           @fields[0][i]=King.new Figure::BLACK
           @fields[7][i]=King.new Figure::WHITE
        when 4
           @fields[0][i]=Queen.new Figure::BLACK
           @fields[7][i]=Queen.new Figure::WHITE
        end
      end
      @fields[1].map! {
       Pawn.new Figure::BLACK
      }
      @fields[6].map! {
        Pawn.new Figure::WHITE
      }
    end

  end
end