class Dice

  attr_accessor :values 

def initialize(values)
  @values = values
end

def dice_roll()
  dice_number = @values.shuffle.first
  return dice_number
end






end