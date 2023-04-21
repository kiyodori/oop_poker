require "minitest/autorun"
require_relative "../player"

class PlayerTest < Minitest::Test
  def test_deal
    hand = TwoCardHand.new
    player = Player.new("あなた", hand)
    deck = Deck.new
    player.deal(deck, 2)
    assert_equal 2, player.cards.size
  end

  def test_hand
    hand = TwoCardHand.new
    player = Player.new("あなた", hand)
    deck = Deck.new
    deck.instance_variable_set(:@cards, [Card.new("♠", "A"), Card.new("♠", "K")])
    player.deal(deck, 2)
    assert_equal "ストレート", player.hand
  end
end
