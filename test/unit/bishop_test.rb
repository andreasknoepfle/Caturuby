$:.unshift File.join(File.dirname(__FILE__),'..','..','src','ruby','model')

require 'test/unit'
require 'figure'
require 'bishop'

class BishopTest < Test::Unit::TestCase
  def setup
    @bishop = Bishop.new Figure::WHITE
  end
  def test_validate_move
    assert_equal(true, @bishop.validate_move(1, 1))
    assert_equal(true, @bishop.validate_move(-1, 1))
    assert_equal(true, @bishop.validate_move(1, -1))
    assert_equal(true, @bishop.validate_move(-1, -1))
    assert_equal(true, @bishop.validate_move(-5, -5))
    assert_equal(false, @bishop.validate_move(-5, 3))
    assert_equal(false, @bishop.validate_move(0, 0))
  end
end
