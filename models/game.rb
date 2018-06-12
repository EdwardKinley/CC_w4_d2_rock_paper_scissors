class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
    return @player1 if (@player1 == "rock" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "paper") || (@player1 == "paper" && @player2 == "rock")
    return @player2 if (@player1 == "rock" && @player2 == "paper") || (@player1 == "scissors" && @player2 == "rock") || (@player1 == "paper" && @player2 == "scissors")
    return "hands equal" if @player1 == @player2
    return "invalid input"
  end

  def return_winner
    return "Player 1" if (@player1 == "rock" && @player2 == "scissors") || (@player1 == "scissors" && @player2 == "paper") || (@player1 == "paper" && @player2 == "rock")
    return "Player 2" if (@player1 == "rock" && @player2 == "paper") || (@player1 == "scissors" && @player2 == "rock") || (@player1 == "paper" && @player2 == "scissors")
    return "no-one" if @player1 == @player2
    return "no-one"
  end

end
