module View
  class ResizePanel < Swing::JPanel
    def initialize
      super
      set_layout nil
      chessboard = Chessboard.new
      listener = ResizeComponentListener.new chessboard
      addComponentListener listener
      add chessboard
    end
  end
end
