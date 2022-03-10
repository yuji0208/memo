# これからターミナル上で動くメモアプリを作成します！
# <メモアプリの仕様>
# ・ターミナル上にメモを入力できる:gets
# ・確認[show]と追加[add]モードを切り替えられる＝＞条件分岐
# ・メモはタイトルと内容から構成される＝＞ハッシュ
# ・メモは複数追加する事ができる＝＞配列
# ・プログラムは止めるまで永久に動く＝＞繰り返し

def add_memo #追加
  puts "[add]モードを選択しました"
  print "タイトルを入力してください→"
  title = gets.chomp
  print "本文を入力してください→"
  content = gets.chomp
  memo = {"タイトル" => title, "本文" => content}
end

def show_memos(memos) #確認
  puts "[show]モードを選択しました"
  memos.each do |memo|
    puts memo["タイトル"] + ";" + memo["本文"]
  end
  puts ""
end

memos = []
while true #無限ループ
  puts "モードを選択してください"
  puts "[add]メモを追加します。"
  puts "[show]メモを確認します。"
  print "[add]または[show]を入力してください→"
  mode = gets.chomp
  if mode == "add"
    #メモを追加します
    memos.push(add_memo)
  elsif mode == "show"
    #メモを確認します
    show_memos(memos)
  else
    puts "エラーです。確認してください！"
  end
end
