#!/usr/bin/env ruby

while line = gets
  a = line.to_f

  sum = a
  (1..9).each do |n|
    sum += (n.odd? ? a*=2 : a/=3)
  end
  puts sum.round(8)
end
