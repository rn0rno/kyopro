#!/usr/bin/env ruby

while n = gets
  puts 1 + (1..n.to_i).reduce(:+)
end
