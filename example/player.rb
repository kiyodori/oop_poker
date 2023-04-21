require_relative "two_card_hand"
require_relative "three_card_hand"

class Player
  attr_reader :cards, :name

  def initialize(name, hand)
    @name = name
    @cards = []
    @hand = hand
  end

  def deal(deck, number_cards = 1)
    cards = deck.draw(number_cards)
    @hand.add_cards(cards)
    @cards = cards.flatten
  end

  def hand
    @hand.judge
  end
end
