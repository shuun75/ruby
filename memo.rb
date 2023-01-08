require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したらctrl + Dを押してください"
  input_memo = $stdin.read
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << ["#{input_memo}"]
  end
elsif memo_type == 2
  puts "編集したいファイル名を入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "完了したらctrl + Dを押してください"
  input_memo = $stdin.read
  
  CSV.open("#{file_name}.csv", "a") do |csv|
    csv << ["#{input_memo}"]
  end
end
