require 'java'

#Load Ruby Gems & Libs
require 'lib/ruby/loadpath'

require 'require_all'

require_all 'src/ruby/model'

class Main
  def initialize
    chess=Chessboard.new
    
  end
end

Main.new