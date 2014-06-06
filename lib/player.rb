require 'hand'
# Player class for blackjack
class Player
  attr_reader :hand
  attr_writer :hand

  def initialize
    @hand = Hand.new
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
