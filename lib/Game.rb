class Game
  def initialize
    @players = []
    @dealer = Dealer.new
  end # initialize

  def add_player
    @players.push(Player.new)
  end # add_player

  def start
    @players.each do |player|
      @dealer.deal_card(player)
      @dealer.deal_card(player)
    end # do each
  end # start

end # class Game
