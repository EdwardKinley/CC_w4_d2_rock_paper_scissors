class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
    return @player1 if @player1 == "rock" && @player2 == "scissors"
    return @player1 if @player1 == "scissors" && @player2 == "paper"
    return @player1 if @player1 == "paper" && @player2 == "rock"
    return @player2 if @player1 == "rock" && @player2 == "paper"
    return @player2 if @player1 == "scissors" && @player2 == "rock"
    return @player2 if @player1 == "paper" && @player2 == "scissors"
    return "draw" if @player1 == @player2
  end

end
