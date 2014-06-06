# basically an array of card
class Hand
  attr_reader :cards
  attr_writer :cards
  def initialize
    @cards = []
  end # initialize

  def add_card(card)
    cards.push(card)
  end # add_card

  def value
    value = 0
    for card in cards
      value += card.rank_value
    end # for
    value
  end # value
end # class Hand
