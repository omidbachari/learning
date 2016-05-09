class Card
  attr_reader :rank
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} - #{@suit}"
  end
end
