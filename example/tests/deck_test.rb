require "minitest/autorun"
require_relative "../deck"

class DeckTest < Minitest::Test
  def test_draw
    deck = Deck.new
    assert_equal 2, deck.draw(2).size
  end
end
