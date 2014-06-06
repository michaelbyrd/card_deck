require 'dealer'

class Player
  def initialize
    @hand = []
    @bankroll = 100
  end # initialize

  def play
    if hand.total > 16
      hit
    else
      stay
    end # if
  end # play
end # class Player
