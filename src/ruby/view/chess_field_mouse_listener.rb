# To change this template, choose Tools | Templates
# and open the template in the editor.

module View
  class ChessFieldMouseListener < Swing::MouseAdapter
    def mouseReleased(evt)
      src_field = evt.get_component
      parent = src_field.get_parent
      point = Swing::SwingUtilities::convert_point src_field,evt.get_x,evt.get_y,parent
      dest_field=Swing::SwingUtilities::get_deepest_component_at(parent, point.get_x,point.get_y)

      $movecontroll.move src_field.row,src_field.col,dest_field.row,dest_field.col if dest_field.is_a?(ChessField)
    end
  end
end
