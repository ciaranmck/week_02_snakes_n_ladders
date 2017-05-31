require('minitest/autorun')
require('minitest/rg')
require_relative('../board')

class TestBoard < MiniTest::Test

  def  setup()
    @snake = Board.new(-6, [25, 50, 75])
    @ladder = Board.new(6, [30, 60, 90])
  end

  def test_snake
    assert_equal(-6, @snake.value)
  end

  def test_ladder
    assert_equal(6, @ladder.value)
  end

end