#!/usr/bin/env ruby
N = 100

numbers = Array.new(N, 0)

while line = gets
  numbers[line.chomp!.to_i-1] += 1
end

max = numbers.max

N.times do |n|
  puts n+1 if numbers[n] == max
end
