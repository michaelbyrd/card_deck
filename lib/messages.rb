require 'player'

# This class will display all the text for the game
class Messages
  def initialize
  end # initialize

  def welcome
    puts '-----------------------------------------'
    puts '----- Welcome to my Blackjack game! -----'
    puts '-----------------------------------------'
  end # welcome

  def hit_or_stay
    puts '-----------------------------------------'
    puts '--- Would you like to (H)it or (S)tay? --'
    puts '-----------------------------------------'
  end # hit_or_stay
end # class Messages
