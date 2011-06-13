require 'observer'
module View
  class ChessField < Swing::JPanel
    attr_reader :col,:row
    def initialize color,row,col
      super()
      @col=col
      @row=row
      @figure=$chessboard.get_field(row, col)
      set_background color
      add_mouse_listener ChessFieldMouseListener.new
      $chessboard.add_observer(self)
    end
    def paintComponent g
        super g
        f = Swing::Font.new("SansSerif", Swing::Font::BOLD, 7);
        g.set_font f
        if @figure!=nil
          if @figure.color == Model::Figure::BLACK
            g.set_color Swing::Color::RED
          else
            g.set_color Swing::Color::GREEN
          end
          g.drawString @figure.name,1,10
        end
    end
    def update from_row,from_col,to_row,to_col
      @figure=$chessboard.get_field(row, col) if from_row==row&&from_col==col ||  to_row==row&&to_col==col
      repaint
    end
  end
end
