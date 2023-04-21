require "minitest/autorun"
require_relative "../three_card_hand"
require_relative "../card"

class ThreeCardHandTest < Minitest::Test
  def test_judge
    hand = ThreeCardHand.new
    hand.add_cards([Card.new("♠", "A"), Card.new("♠", "A"), Card.new("♠", "A")])
    assert_equal "スリーカード", hand.judge

    hand = ThreeCardHand.new
    hand.add_cards([Card.new("♠", "A"), Card.new("♠", "K"), Card.new("♠", "Q")])
    assert_equal "ストレート", hand.judge

    hand = ThreeCardHand.new
    hand.add_cards([Card.new("♠", "A"), Card.new("♠", "2"), Card.new("♠", "3")])
    assert_equal "ストレート", hand.judge

    hand = ThreeCardHand.new
    hand.add_cards([Card.new("♠", "K"), Card.new("♠", "A"), Card.new("♠", "2")])
    assert_equal "ハイカード", hand.judge

    hand = ThreeCardHand.new
    hand.add_cards([Card.new("♠", "K"), Card.new("♠", "A"), Card.new("♠", "K")])
    assert_equal "ペア", hand.judge

    hand = ThreeCardHand.new
    hand.add_cards([Card.new("♠", "Q"), Card.new("♠", "K"), Card.new("♠", "3")])
    assert_equal "ハイカード", hand.judge
  end
end
