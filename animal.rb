class Animal
  attr_accessor :legs, :color

  def initialize(legs, color)
    @legs = legs
    @color = color
  end

  def get_legs
    @legs
  end

  def get_color
    @color
  end

end

# dog = Animal.new
# dog.legs = 4
# dog.color = "black"

# lion = Animal.new
# lion.legs = 4
# lion.color = "green"

# p dog.legs
# p lion.color

butterfly = Animal.new(6, "orange")
p butterfly.get_legs
p butterfly.get_color
