require 'player'

# THIS ALSO NEEDS TO HAND OUT CHIPS
class Dealer
  attr_reader :deck

  def initialize
    @deck = Deck.new
  end # initialize

  def deck
    deck
  end

  def deal_card(player)
    player.hand.add_card(deck.draw)
  end # deal_card
end # class Dealer
