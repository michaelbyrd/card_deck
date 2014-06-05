require "card"
# ruby -Ilib lib/deck.rb
class Deck
  def initialize
    @deck = []
    @count = 0
  end # initialize

  def make_deck
    while (count < 52)
      @deck << Card.new(2, :spades)
      count += 1
    end # while
  end # make_deck
end # class card
