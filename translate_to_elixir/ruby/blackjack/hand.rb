class Hand
  attr_accessor :dealer, :hand, :score

  def initialize(hash=nil)
    @name = hash[:name] || %w(omid john terry aimee).sample
    @dealer = hash[:dealer] || false
    @hand = []
  end

  def to_s
    "#{@name.capitalize}"
  end

  def score
    ace_count = 0
    score = @hand.inject(0) do |memo, card|
      card_score = score_card(card)
      ace_count += 1 if card_score == 11
      memo += card_score
    end
    if score > 21 && ace_count > 0
      while ace_count > 0
        score -= 10
        ace_count -= 1
      end
    end
    score
  end

  private def score_card(card)
    if card.rank == 'A'
      11
    elsif card.rank.is_a? String
      10
    else
      card.rank
    end
  end
end
