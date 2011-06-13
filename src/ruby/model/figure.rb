module Model
  class Figure
    attr_reader :color
    BLACK = 0
    WHITE = 1
    def initialize color
      @color = color
    end
  end
end