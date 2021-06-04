puts "じゃんけん..."

def janken  

puts "0(グー) 1(チョキ) 2(パー)"
player_hand = gets.to_i
bunker_hand = rand(3)

puts "ホイ!"
puts "----------------"
jankens = ["グー", "チョキ","パー"]
puts "あなたの手:#{jankens[player_hand]}"
puts "相手の手:#{jankens[bunker_hand]}"

if player_hand == bunker_hand
 puts "あいこで"
 return true
 
elsif (player_hand == 0 && bunker_hand == 1)||(player_hand == 1 && bunker_hand == 2)||(player_hand == 2 && bunker_hand == 0)
 puts "じゃんけんに勝ちました。"
 puts "----------------------"
 puts "あっち向いて〜"
 puts "0(上) 1(右) 2(下) 3(左)"
 ways = ["上","右","下","左"]
 player_way = gets.to_i
 bunker_way = rand(4)
 puts "-----------"
 puts "ホイ!"
 puts "あなたの手:#{ways[player_way]}"
 puts "相手の顔:#{ways[bunker_way]}"
 if player_way == bunker_way
   puts "あなたの勝ちです。"
    puts "----------------------"
   puts "もう一度挑戦しますか？"
   puts "0(Yes) 1(No)"
   play_again = gets.to_i
    if play_again == 0
      puts "--------------------"
      puts "じゃんけん..."
       return true
    else play_again == 1
       return false
    end
 else
   puts "---------------------"
   puts "じゃんけん..."
   return true
 end
else
 puts "じゃんけんに負けました。"
 puts "----------------------"
 puts "あっち向いて〜"
 puts "0(上) 1(右) 2(下) 3(左)"
 ways = ["上","右","下","左"]
 player_way = gets.to_i
 bunker_way = rand(4)
 puts "-----------"
 puts "ホイ!"
 puts "あなたの顔:#{ways[player_way]}"
 puts "相手の手:#{ways[bunker_way]}"
 if player_way == bunker_way
   puts "あなたの負けです。"
   puts "----------------------"
   puts "もう一度挑戦しますか？"
   puts "0(Yes) 1(No)"
   play_again = gets.to_i
    if play_again == 0
      puts "--------------------"
      puts "じゃんけん..."
      return true
    else play_again == 1
       return false
    end
 else
   puts "---------------------"
   puts "じゃんけん..."
   return true
 end
end
end


next_game = true

while next_game
  next_game = janken
end
