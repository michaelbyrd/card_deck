require 'dealer'

class Player
  def initialize(hand, bankroll, strat) # strat = human or comp
    @hand = hand
    @bankroll = bankroll
    @strat = strat
  end # initialize

  def play
    if hand.total > 16
      hit
    else
      stay
    end # if
  end # play
end # class Player
