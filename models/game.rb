class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    case
    when @hand1 == 'rock' && @hand2 == 'paper'
        return "Paper wins!"
      when @hand1 == 'paper' && @hand2 == 'rock'
        return "Paper wins!"
      when @hand1 == 'rock' && @hand2 == 'scissors'
          return "Rock wins!"
      when @hand1 == 'scissors' && @hand2 == 'rock'
          return "Rock wins!"
      when @hand1 == 'scissors' && @hand2 == 'paper'
          return "Scissors wins!"
      when @hand1 == 'paper' && @hand2 == 'scissors'
          return "Scissors wins!"
      when @hand1 == @hand2
          return "It's a tie!"
    end
  end



end
