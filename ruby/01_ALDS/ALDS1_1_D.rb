#!/usr/bin/env ruby

n = gets.chomp.to_i

max = - 1.0 / 0.0
min = 1.0 / 0.0

n.times do
  r = gets.chomp.to_i
  max = r - min if r - min > max
  min = r if min > r
end

puts max
