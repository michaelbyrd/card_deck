# class Card: Card is used in class Deck
require 'pry'
# n next
# s step
# f finish
# c continue

class Card
  attr_reader :rank, :suit
  attr_writer :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @hash = nil
    run
  end # initialize

  def run
    make_hash
  end # run

  def make_hash
    @hash = Hash.new { | hash, key| key }
    h = { A: 1, J: 11, Q: 12, K: 13 }
    @hash.merge!(h)
  end # make_hash

  def rank_value
    @hash[@rank]
  end # rank

  def greater_than?(card)
    rank_value > card.rank_value
  end # greater_than?

  def ==(other)
end # class Card
