#!/usr/bin/env ruby

def inthree?(i)
  return true if (i % 3).zero?
  return true if i.to_s =~ /3/
  # return true if i.to_s.include?('3') # <- こっちのほうが遅い
  false
end

n = gets.chomp.to_i

1.upto(n) do |i|
  print " #{i}" if inthree?(i)
end
puts
