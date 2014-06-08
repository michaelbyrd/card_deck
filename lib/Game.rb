require 'dealer'
require 'player'
require 'messages'

# Controls most of the other parts of the game
class Game
  attr_reader :players, :dealer, :message
  attr_writer :players, :dealer

  def initialize
    @players = []
    @dealer = Dealer.new
    @message = Messages.new
  end # initialize

  def add_player(human)
    players.push(Player.new(human))
  end # add_player

  def deal_to_each_player
    players.each do |player|
      dealer.deal_card(player)
      dealer.deal_card(player)
      puts player.hand.value
    end # players.each do
  end # deal_to_each_play

  def bet_from_each_player
    players.each do |player|
      player.bet
    end # each player bet
  end # bet_from_each_player

  def do_players_hit
    players.each do |player|
      hit_player(player)
    end # each player do
  end # do_players_hit

  def hit_player(player)
    if player.hit?
      dealer.deal_card(player)
      hit_player(player)
    end # if
  end # hit_player

  def start
    message.welcome
    add_player(true)
    add_player(false)
    round
  end # start

  def round
    bet_from_each_player
    deal_to_each_player
    do_players_hit
  end # round
end # class Game

g = Game.new
g.start
