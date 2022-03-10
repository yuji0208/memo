# これからターミナル上で動くメモアプリを作成します！
# メモアプリの仕様
# ・ターミナル上にメモを入力できる
# ・確認と追加モードを切り替えられる＝＞条件分岐
# ・メモはタイトルと内容から構成される＝＞ハッシュ
# ・メモは複数追加する事ができる＝＞配列
# ・プログラムは止めるまで永久に動く＝＞繰り返し

def add_memo #追加
  puts "【addモード】を選択しました。"
  print "メモのタイトルを入力してください→"
  title = gets.chomp
  print "メモの本文を入力してください→"
  content = gets.chomp
  memo = {"タイトル" => title, "本文" => content}
end

def show_memos(memos) #show
  puts "【showモード】を選択しました。"
  memos.each do |memo|
    puts memo["タイトル"] + ":" + memo["本文"]
  end
  puts ""
end

memos = []
while true #無制限にループする
  puts "【モードを選択】"
  puts "[show]メモを確認"
  puts "[add]メモを追加"
  print "[show]または[add]を入力して下さい→" #printにする事で改行を防ぐ
  mode = gets.chomp
  if mode == "add"
    # メモの追加
    memos.push(add_memo) #配列内にハッシュを追加する
  elsif mode == "show"
    # メモの確認
    show_memos(memos) #memosの配列をshow_memosの配列に渡す
  else
    puts "エラーです。確認して下さい！"
  end
end
