#!/usr/bin/env ruby

def prime?(x)
  return true if x == 2
  return false if x < 2 || (x % 2).zero?

  i = 3
  while i <= Math.sqrt(x)
    return false if (x % i).zero?
    i += 2
  end
  true
end

n = gets.chomp.to_i

cnt = 0
n.times do
  cnt += 1 if prime?(gets.chomp.to_i)
end

puts cnt
