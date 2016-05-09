class Dealer
  def deal(deck, player)
    @deck = deck
    @player = player

    2.times { @player.hand << @deck.cards.pop }
    handle_initial_deal(@player)

    while hitting(@player)
      @player.hand << @deck.cards.pop
      handle_hit(@player)
    end

    @deck
  end

  private def hitting(player)
    if player.dealer && player.score <= 17
      true
    elsif player.dealer
      false
    else
      hit_or_stand_ux
    end
  end

  private def handle_initial_deal(player)
    puts "#{player} was dealt #{player.hand[0]}"
    puts "#{player} was dealt #{player.hand[1]}"
    show_score(player)
    if player.score == 21
      puts "#{player} wins!"
      exit
    end
  end

  private def handle_hit(player)
    puts "#{player} was dealt #{player.hand[-1]}"
    show_score(player)
    if player.score > 21
      puts "#{player} busts!"
      exit
    elsif player.score == 21
      puts "#{player} wins!"
      exit
    end
  end

  private def hit_or_stand_ux
    print "Hit or stand (h/s): "
    input = gets.chomp.downcase
    puts
    if input == 'h'
      true
    elsif input == 's'
      false
    else
      puts "Invalid input. Going to hit."
      true
    end
  end

  private def show_score(player)
    puts
    puts "#{player}'s score is #{player.score}"
    puts
  end
end
