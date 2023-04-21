require_relative "hand"

class TwoCardHand < Hand
  def judge
    if straight?
      "ストレート"
    elsif pair?
      "ペア"
    else
      "ハイカード"
    end
  end

  private
    def straight?
      scores = @cards.map(&:score).sort
      scores[1] == scores[0] + 1 || scores[1] == scores[0] + 12
    end

    def pair?
      @cards.group_by(&:score).values.any? { |group| group.size == 2 }
    end
end
