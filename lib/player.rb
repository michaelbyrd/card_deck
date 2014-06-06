require 'hand'
# Player class for blackjack
class Player
  attr_reader :hand, :hit
  attr_writer :hand, :hit

  def initialize
    @hand = Hand.new
    @bankroll = 100
    @hit = true
  end # initialize

  def hit?
    if hand.value <= 16
      hit = true
    else
      hit = false
    end # if
    puts hit
  end # hit?
end # class Player
