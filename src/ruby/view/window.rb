module View
  class Window

    def initialize
      @frame = Swing::JFrame.new "Cataruby"
      @frame.set_size 300,300
      @frame.set_location 300,200
      content = @frame.get_content_pane
      content.add  ResizePanel.new
      @frame.set_default_close_operation(Swing::JFrame::EXIT_ON_CLOSE)
      @frame.set_visible true
    end
  end
end