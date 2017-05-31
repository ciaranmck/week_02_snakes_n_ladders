class Player 

  attr_accessor :position 
  attr_reader :name 

  def initialize(name, position, dice, array)
    @position = position
    @name = name
    @dice = dice
    @array = array
  end

  def move(number_of_squares)
    @position += number_of_squares
  end

  def take_turn()
    dice_result = @dice.dice_roll
    move(dice_result)
  end

  def check_win()
    if @position >= 100
      return "You Win!"
    else
      return "Next Roll"
    end
  end

  def snake_or_ladder_check()
    for number in @array.value
     if number == @position
      @position += @snake.value
     end
    end 
  end

  
end