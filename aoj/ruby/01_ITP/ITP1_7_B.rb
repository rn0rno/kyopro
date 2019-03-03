#!/usr/bin/env ruby

def check(cnt, min, n, x)
  return 1 if x.zero? && cnt.zero?
  return 0 if cnt.zero?

  k = 0
  (min..n).each do |i|
    k += check(cnt - 1, i + 1, n, x - i) unless x - i < 0
  end

  k
end

while (n, x = gets.chomp.split.map(&:to_i)) != [0, 0]
  puts check(3, 1, n, x)
end
