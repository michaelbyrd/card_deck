require 'dealer'
require 'player'

# Controls most of the other parts of the game
class Game
  attr_reader :players, :dealer
  attr_writer :players, :dealer

  def initialize
    @players = []
    @dealer = Dealer.new
  end # initialize

  def add_player
    players.push(Player.new)
  end # add_player

  def shuffle_up_and_deal
    dealer.deck.shuffle
    players.each do |player|
      dealer.deal_card(player)
      dealer.deal_card(player)
    end # players.each do
  end # shuffle_up_and_deal
end # class Game

g = Game.new
g.add_player
g.add_player
g.shuffle_up_and_deal
puts g.players[0].hand.value
g.players[0].hit?
puts g.players[1].hand.value
g.players[1].hit?
