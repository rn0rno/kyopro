# 動的計画法(DP)でナップザック問題を解く

## 各パラメータ
 - [w] ナップザックの容量
 - [n] 要素の個数
 - [things] 要素の重さと価値の配列 [weight, value]
 - [dyn] 動的計画法のテーブル

## 使用例
 - `0042.rb`

## プログラム
```ruby

w = gets.chomp!.to_i
break if w.zero?

n = gets.chomp!.to_i

things = []
dyn = Array.new(w+1, -1)

n.times do
  things << gets.chomp!.split(?,).map(&:to_i)
end

# 初期化
dyn[0] = 0
# 処理
things.each do |e|
  w.downto(0) do |i|
    next if dyn[i] < 0
    next if i+e[1] > w
    dyn[i+e[1]] =  dyn[i] + e[0] if dyn[i+e[1]] < dyn[i] + e[0]
  end
end
```
