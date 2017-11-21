class Game

  # def initialize(hand1, hand2)
  #   @hand1 = hand1
  #   @hand2 = hand2
  # end

  # def play
  #   case
  #   when @hand1 == 'rock' && @hand2 == 'paper'
  #       return "Paper wins!"
  #     when @hand1 == 'paper' && @hand2 == 'rock'
  #       return "Paper wins!"
  #     when @hand1 == 'rock' && @hand2 == 'scissors'
  #         return "Rock wins!"
  #     when @hand1 == 'scissors' && @hand2 == 'rock'
  #         return "Rock wins!"
  #     when @hand1 == 'scissors' && @hand2 == 'paper'
  #         return "Scissors wins!"
  #     when @hand1 == 'paper' && @hand2 == 'scissors'
  #         return "Scissors wins!"
  #     when @hand1 == @hand2
  #         return "It's a tie!"
  #   end
  # end

  def initialize(objects)
    @player1_hand = objects[:player1_hand]
    @player2_hand = objects[:player2_hand]
  end

  def play
    case
    when @player1_hand == 'rock' && @player2_hand == 'paper'
      return 'Player 2 wins with paper!'
    when @player2_hand == 'rock' && @player1_hand == 'paper'
      return 'Player 1 wins with paper!'
    when @player1_hand == 'rock' && @player2_hand == 'scissors'
      return 'Player 1 wins with rock!'
    when @player2_hand == 'rock' && @player1_hand == 'scissors'
      return 'Player 2 wins with rock!'
    when @player1_hand == 'paper' && @player2_hand == 'scissors'
      return 'Player 2 wins with scissors!'
    when @player2_hand == 'paper' && @player1_hand == 'scissors'
      return 'Player 1 wins with scissors!'
    when @player1_hand == @player2_hand
      return 'Everybody wins'
    end
  end


end
