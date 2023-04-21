require_relative "card"

class Deck
  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    @cards.shuffle!
  end

  def draw(number)
    @cards.pop(number)
  end
end
