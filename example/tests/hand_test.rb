require "minitest/autorun"
require_relative "../hand"

class HandTest < Minitest::Test
  def test_add_cards
    hand = Hand.new
    hand.add_cards([Card.new("♠", "A"), Card.new("♠", "K")])
    assert_equal 2, hand.cards.size
  end
end
