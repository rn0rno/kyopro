#!/usr/bin/env ruby

team = Hash.new
points = Array.new

loop do
  i, s = gets.chomp!.split(?,).map(&:to_i)
  break if i.zero? && s.zero?

  # 整理番号→ポイントのヒモ付
  team[i] = s
  # ポイントを格納する
  points << s
end

# ポイントをユニークにして降順ソート
points.uniq!.sort!.reverse!

while line = gets
  q = line.to_i
  # 配列の何番目かを探索して出力
  p (points.index(team[q])+1)
end
