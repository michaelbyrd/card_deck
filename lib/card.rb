# class Card: Card is used in class Deck
class Card
  attr_reader :rank, :suit
  attr_writer :rank, :suit

  def initialize( rank, suit)
    @rank = rank
    @suit = suit

    @hash = Hash.new { | hash, key| key }
    h = { A: 1, J: 11, Q: 12, K: 13 }
    @hash.merge!(h)
  end # initialize

  def rank_hash
    if @hash.keys.include?(@rank)
      @hash[@rank]
    end # if
    @rank
  end # rank

  def greater_than?(card)
    rank > card.rank_hash
  end # greater_than?
end # class Card

# Card.new( 10, :diamonds)
