class Figure
  attr_reader :color
  BLACK = 0
  WHITE = 1
  def initialize color
    @color = color
     
  end
  def move rowoffset,columnoffset
    
  end

  def validate_move offset_x,offset_y
    # Make any move 
    offset_x.abs > 0 || offset_y.abs > 0
  end

end
