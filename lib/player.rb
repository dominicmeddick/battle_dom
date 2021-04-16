class Player
  attr_reader :name, :hitpoints
  HIT_POINTS = 50

  def initialize(name, hitpoints = HIT_POINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def receive_damage
    @hitpoints -= 10
  end
end