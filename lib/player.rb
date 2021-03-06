require 'hand'
# Player class for blackjack
class Player
  attr_reader :hand, :hit, :human
  attr_writer :hand, :hit, :human

  def initialize(human)
    @human = human
    @hand = Hand.new
    @bankroll = 100
    @pool = 0
    @hit = false
  end # initialize

  def bet
    if @human
      puts '---- How much would you like to bet? ----'
      puts '-----------------------------------------'
      b = gets.to_i
      puts '-----------------------------------------'
      if @bankroll > b
        @pool = b
      else
        puts 'You do not have enough chips, too bad'
      end # if
    end # if
  end # bet

  def human_hit
    puts '------------ Your cards are: ------------'
    puts '-----------------------------------------'
    hand.cards.each do |card|
      print card.to_s
      print ' '
    end # do each card
    puts ' '
    puts '-----------------------------------------'
    puts '--- Would you like to (H)it or (S)tay? --'
    puts '-----------------------------------------'
    if gets.chomp.downcase == 'h'
      @hit = true
    else
      @hit = false
    end # if
  end # human_hit

  def hit?
    if @human == true
      @hit = human_hit
    else
      if hand.value <= 16
        @hit = true
      else
        @hit = false
      end # if
    end # if
  end # hit?
end # class Player
