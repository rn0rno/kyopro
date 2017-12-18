#!/usr/bin/env ruby

n = gets.chomp!.to_i

n.times do
  tris = gets.chomp!.split(" ").map(&:to_i)

  tris.sort!.map!{|elem| elem = elem ** 2}
  puts (tris.pop) == tris.reduce(:+) ? "YES" : "NO"

  # 三角形かどうかの判定
  # puts (tris.pop < tris.reduce(:+)) ? "YES" : "NO"
end
