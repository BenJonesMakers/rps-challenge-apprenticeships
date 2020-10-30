class Game
  attr_reader :player1, :player2

  # This is called with Game.create(player1, player2) where paramaters are player objects

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  # that creates @game as an instance of the Class Game
  # As the @game object exists at the same level the below method can see and return it.
  # Therefore we can use it in all our routes by calling @game = Game.instance
  
  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end