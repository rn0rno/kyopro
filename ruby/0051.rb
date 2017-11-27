#!/usr/bin/env ruby
n = gets.chomp!.to_i

n.times do
  num = gets.split('').sort
  puts num.reverse.join.to_i - num.join.to_i
end
