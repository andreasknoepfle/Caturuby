# To change this template, choose Tools | Templates
# and open the template in the editor.

class Chessboard
  def initialize
      create_figures
  end

  def get_field(row,col)
    @fields[row][col]
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
