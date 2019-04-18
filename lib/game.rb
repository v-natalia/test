class Game
  def initialize
    @player1 = 0
    @player2 = 0
  end

  def get_score
    "#{@player1}-#{@player2}"
  end

  def player1_scored?
    @player1 += 15
  end

  def player2_scored?
    @player2 += 15
  end
end

p Game.new.get_score
