class Card
  SUITS = %w[♣ ◆ ♥ ♠]
  RANKS = %w[2 3 4 5 6 7 8 9 10 J Q K A]

  SUITS_JP = {
    "♣" => "クラブ",
    "◆" => "ダイヤ",
    "♥" => "ハート",
    "♠" => "スペード"
  }

  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def score
    return @rank.to_i if @rank.to_i > 0

    case @rank
    when "J" then 11
    when "Q" then 12
    when "K" then 13
    when "A" then 14
    end
  end

  def to_s
    "#{SUITS_JP[@suit]}の#{@rank}"
  end
end
