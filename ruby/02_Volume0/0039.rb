#!/usr/bin/env ruby

roma = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
while line = gets
  a = line.chomp!.split('')

  bfr = 0
  sum = 0
  a.each do |chr|
    now = roma[chr.to_sym]
    now -= (bfr*2) if bfr < now
    bfr = now

    sum += now
  end

  puts sum
end
