# require_relative 'card'

# class Deck
# 	attr_accessor :cards
# 	RANKS = [
# 		2,
# 		3,
# 		4,
# 		5,
# 		6,
# 		7,
# 		8,
# 		9,
# 		10,
# 		'J',
# 		'Q',
# 		'K',
# 		'A'
# 	]

# 	SUITS = %w(
# 	  Spades
# 	  Clubs
# 	  Diamonds
# 	  Hearts
# 	)

# 	def initialize
# 		@cards = []
# 		RANKS.each do |rank|
# 			SUITS.each do |suit|
# 				@cards << Card.new(rank, suit)
# 			end
# 		end
# 		@cards.shuffle!
# 	end
# end