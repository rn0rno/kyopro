#!/usr/bin/env ruby

output = [0, 0]

while line = gets
  a, b, c = line.chomp!.split(",").map(&:to_i)

  output[0] += 1 if a**2 + b**2 == c**2
  output[1] += 1 if a == b
end

puts output
