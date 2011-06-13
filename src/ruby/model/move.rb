# To change this template, choose Tools | Templates
# and open the template in the editor.

module Model
  class Move
    attr_reader :row,:col,:offset_row,:offset_col,:color,:hit
    def initialize from_row,from_col,to_row,to_col,color,hit
      @row=from_row
      @col=from_col
      @offset_row=to_row-from_row
      @offset_col=to_col-from_col
      @color=color
      @hit=hit
    end
  end
end
