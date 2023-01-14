class Janken_hoi
  puts "最初はグー\nジャンケン..."
  
  def janken
    # じゃんけんの結果を初期化
    @judge = ""
    
    puts "0(グー)、1(チョキ)、2(パー)、3(戦わない)"
    hands = ["グー", "チョキ", "パー","たたかわない"]
    
    my_hand = gets.to_i
    computer_hand = rand(3)
    
    puts "--------------------"
    
    if my_hand == 3
      puts "戦いから降りました"
    else
      puts "あなた:#{hands[my_hand]}を出しました"
      puts "相手:#{hands[computer_hand]}を出しました"
      
      # じゃんけんの勝ち負け
      win = (my_hand == 0 && computer_hand == 1) || (my_hand == 1 && computer_hand == 2) || (my_hand == 2 && computer_hand == 0)
      draw = my_hand == computer_hand
      
      if win
        puts "ジャンケンでかちました"
        puts "--------------------"
        @judge = "win"
        look_over_there_hoi
      elsif draw
        puts "引き分けです\nもう一度"
        puts "--------------------"
        puts "あいこで..."
        janken
      else
        puts "ジャンケンで負けました"
        puts "--------------------"
        look_over_there_hoi
      end
    end
  end
  
  def look_over_there_hoi
    puts "あっち向いて〜"
    puts "0（上）、1（下）、2（左）、3（右）"
    
    looks = ["上", "下", "左","右"]
    computer_look = rand(4)
    my_look = gets.to_i
    
    puts "あなた:#{looks[my_look]}"
    puts "相手:#{looks[computer_look]}"
    
    # あっち向いてほいの勝ち負け
    settlement = my_look == computer_look
    
    if settlement
      if @judge == "win"
        puts "勝ちました"
      else
        puts "負けました"
      end
    else
      puts "勝負がつきませんでした"
      puts "--------------------"
      puts "最初はグー\nジャンケン..."
      janken
    end
  end
end

game = Janken_hoi.new
game.janken