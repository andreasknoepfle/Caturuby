module View
  class ResizeComponentListener
    include Swing::ComponentListener

    def initialize(resizeable)
      @resizeable = resizeable
    end

    def componentResized(e)
      component = e.get_source
      dimensions = component.get_size
      framesize=0
      if dimensions.get_height > dimensions.get_width
        framesize = dimensions.get_width
      else
         framesize = dimensions.get_height
      end

      @resizeable.set_size(framesize,framesize)
      #center
      @resizeable.set_location((dimensions.get_width-framesize)/2,(dimensions.get_height-framesize)/2)
      @resizeable.validate
    end
  end
end
