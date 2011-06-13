require 'java'

#Load Ruby Gems & Libs
require 'lib/ruby/loadpath'

require 'require_all'

module Swing
  include_package "javax.swing"
  include_package "java.awt"
  include_package "java.awt.event"
end


 require_all 'src/ruby/model'
 require_all 'src/ruby/view'
 require_all 'src/ruby/controller'

class Main
  def initialize
    $chessboard=Model::Chessboard.new
    $movecontroll=Controller::MoveControll.new
    View::Window.new
  end
end

Main.new