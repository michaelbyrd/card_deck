require 'hand'
# Player class for blackjack
class Player
  attr_reader :hand, :hit, :human
  attr_writer :hand, :hit, :human

  def initialize(human)
    @human = human
    @hand = Hand.new
    @bankroll = 100
    @hit = false
  end # initialize

  def human_hit
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
