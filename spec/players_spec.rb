require('minitest/autorun')
require('minitest/rg')
require_relative('../players')
require_relative('../dice')
require_relative('../board')

class TestGame < MiniTest::Test 

  def setup()
    @dice = Dice.new([1, 2, 3, 4, 5, 6])
    @player1 = Player.new("bob",0, @dice, @snake)
    @snake = Board.new(-6, [25, 50, 75])
    @ladder = Board.new(6, [30, 60, 90])
  end


  def test_player_current_position
    squares_to_move = @dice.dice_roll
    @player1.move(squares_to_move)
    assert_equal(squares_to_move, @player1.position)
  end

  def test_player_wins
    @player1.move(100)
    win_or_move = @player1.check_win
    assert_equal("You Win!", win_or_move)
  end

  def test_player_lands_on_snake
    @player1.move(25)
    assert_equal(19, @player1.position)
  end


end 