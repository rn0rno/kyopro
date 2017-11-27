#!/usr/bin/env ruby

while line = gets
  a, b, n = line.chomp!.split.map(&:to_f)

  k = (a / b).to_s
  k =~ /^.*\.(.*)/
  dec = $1

  sum = 0
  (1..n).each do |i|
    sum += dec[i-1].to_i || 0
  end
  puts sum
end
