require('minitest/autorun')
require('minitest/rg')
require_relative('../dice.rb')

class TestDice < MiniTest::Test

  def setup()
    @dice = Dice.new([1, 2, 3, 4, 5, 6])
  end

  # def test_dice_roll()
  #   assert_equal(true, @dice.dice_roll)
  # end


end