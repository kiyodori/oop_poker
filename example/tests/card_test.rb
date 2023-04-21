require "minitest/autorun"
require_relative "../card"

class CardTest < Minitest::Test
  def test_draw
    card = Card.new("♠", "A")
    assert_equal "スペードのA", card.to_s
  end
end
