require_relative "hand"

class ThreeCardHand < Hand
  def judge
    if three_card?
      "スリーカード"
    elsif straight?
      "ストレート"
    elsif pair?
      "ペア"
    else
      "ハイカード"
    end
  end

  private
    def three_card?
      @cards.group_by(&:score).values.any? { |group| group.size == 3 }
    end

    def straight?
      scores = @cards.map(&:score).sort
      scores.each_cons(2).all? { |a, b| b == a + 1 } || straight_ace_low?
    end

    def straight_ace_low?
      scores = @cards.map(&:score).sort
      scores == [2, 3, 14]
    end

    def pair?
      @cards.group_by(&:score).values.any? { |group| group.size == 2 }
    end
end
