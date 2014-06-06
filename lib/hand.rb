# basically an array of card
class Hand
  def initialize
    @cards = []
  end # initialize 

  def add_card(card)
    @cards.push(card)
  end # add_card

  def value
    value = 0
    @cards.each do |card|
      value += card.rank_value
    end # each do
    value
  end # value
end # class Hand
