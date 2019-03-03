#!/usr/bin/env ruby

n = gets.chomp!.to_i

n.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.chomp!.split(" ").map(&:to_f)

  puts ((x2 - x1) * (y4 - y3)  == (x4 - x3) * (y2 - y1)) ? "YES" : "NO"
end

# NOTE: 通るはずだけど通らない？
# 既存のAcceptをコピペしてもWAだったので何かしらおかしい気がする
