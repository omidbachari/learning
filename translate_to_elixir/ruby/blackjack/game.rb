require_relative 'hand'
require_relative 'deck'
require_relative 'dealer'

class Game
  def player_setup
    puts "Welcome to Blackjack!"
    puts
    print "What is your name?"
    @name = gets.chomp.downcase
  end

  def initialize_game
    @player = Hand.new(name: @name)
    @computer = Hand.new(dealer: true)
    @deck = Deck.new
    @dealer = Dealer.new
  end

  def run_game
    @deck = @dealer.deal(@deck, @player)
    @deck = @dealer.deal(@deck, @computer)
  end

  def resolve_game
    if @player.score > @computer.score
      puts "You win"
    else
      puts "You lose!"
    end
  end
end

game = Game.new

game.player_setup
game.initialize_game
game.run_game
game.resolve_game
