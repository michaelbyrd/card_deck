require 'dealer'
# Player class for blackjack
class Player
  def initialize
    @hand = []
    @bankroll = 100
  end # initialize

  def play
    if hand.value > 16
      'hit'
    else
      'stay'
    end # if
  end # play
end # class Player
