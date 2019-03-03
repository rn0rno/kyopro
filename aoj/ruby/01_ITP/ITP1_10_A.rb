#!/usr/bin/env ruby
x1, y1, x2, y2 = gets.chomp.split.map(&:to_f)

puts Math.sqrt((x1 - x2)**2 + (y1 - y2)**2)
