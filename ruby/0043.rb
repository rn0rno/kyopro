#!/usr/bin/env ruby

while line = gets
  cards = line.chomp!.split('').map(&:to_i)

  nums = Hash.new(0)
  (0..9).each{ |e| nums[e] = 0 }

  # 数字の出現回数を数える
  hands.each{ |h| nums[h] += 1 }

  # 要回答

end
