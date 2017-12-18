#!/usr/bin/env ruby

n = gets.chomp!.to_i

n.times do
  a = gets.chomp!.to_i
  b = gets.chomp!.to_i

  ans = a + b

  puts (ans.to_s.length > 80) ? "overflow" : ans

end
