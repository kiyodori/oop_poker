# Step 3-4 のコードです

require "debug"

require_relative "game"

puts "ポーカーを開始します。カードを引く枚数を選択してください（2, 3）："

while number_cards = gets.chomp.to_i
  break if [2, 3].include?(number_cards)

  puts "2か3を入力してください。"
  next
end

game = Game.new(number_cards)
game.start
