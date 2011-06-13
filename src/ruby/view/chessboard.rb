module View
  class Chessboard < Swing::JPanel
    def initialize
       super
       set_layout (Swing::GridLayout.new 8,8)
       for i in 0..7 do
         for j in 0..7 do
            num=i%2+j%2
            case num
            when 0,2
              add ChessField.new Swing::Color::WHITE,i,j
            when 1
              add ChessField.new Swing::Color::BLACK,i,j
            end
         end
       end
    end
  end
end
