#!/usr/bin/env ruby
w = gets.chomp!.to_i
n = gets.chomp!.to_i

lots = (1..w).to_a
n.times do
  a, b = gets.chomp!.split(",").map(&:to_f)
  lots[a-1], lots[b-1] = lots[b-1], lots[a-1]
end

puts lots
