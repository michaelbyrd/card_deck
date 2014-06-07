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

  def deal_to_each_player
    players.each do |player|
      dealer.deal_card(player)
      dealer.deal_card(player)
    end # players.each do
  end # deal_to_each_play

  def do_players_hit
    players.each do |player|
      if player.hit?
        dealer.deal_card(player)
      end # is
    end # each player do
  end # do_players_hit
end # class Game

g = Game.new
g.add_player
g.add_player
g.deal_to_each_player


print g.players[0].hand.value
g.players[0].hit?
print g.players[1].hand.value
g.players[1].hit?
g.do_players_hit
print g.players[0].hand.value
g.players[0].hit?
print g.players[1].hand.value
g.players[1].hit?
