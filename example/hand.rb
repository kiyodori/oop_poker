class Hand
  attr_reader :cards

  def initialize
    @cards = []
  end

  def add_cards(cards)
    @cards += cards
  end
end
