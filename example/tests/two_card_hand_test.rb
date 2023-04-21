require "minitest/autorun"
require_relative "../two_card_hand"
require_relative "../card"

class TwoCardHandTest < Minitest::Test
  def test_judge
    hand = TwoCardHand.new
    hand.add_cards([Card.new("♠", "A"), Card.new("♠", "K")])
    assert_equal "ストレート", hand.judge

    hand = TwoCardHand.new
    hand.add_cards([Card.new("♠", "A"), Card.new("♠", "2")])
    assert_equal "ストレート", hand.judge

    hand = TwoCardHand.new
    hand.add_cards([Card.new("♠", "Q"), Card.new("♠", "Q")])
    assert_equal "ペア", hand.judge

    hand = TwoCardHand.new
    hand.add_cards([Card.new("♠", "Q"), Card.new("♠", "10")])
    assert_equal "ハイカード", hand.judge
  end
end
