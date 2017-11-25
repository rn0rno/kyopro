#!/usr/bin/env ruby
while line = gets
  a = line.chomp!.to_i

  k = 9
  weights = []
  while a != 0
    if a >= 2 ** k
      a -= (2 ** k)
      weights << k
    end
    k -= 1
  end
  puts weights.map{|w| 2**w}.reverse.join(' ')
end
