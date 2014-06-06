require 'deck'

# THIS ALSO NEEDS TO HAND OUT CHIPS
class Dealer
  attr_reader :deck
  attr_writer :deck

  def initialize
    @deck = Deck.new
  end # initialize

  def deal_card(player)
    player.hand.add_card(deck.draw)
  end # deal_card
end # class Dealer
