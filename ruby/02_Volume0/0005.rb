#!/usr/bin/env ruby

while line = gets
  a,b=line.chomp!.split(" ").map(&:to_i)
  puts "#{a.gcd(b)} #{a.lcm(b)}"
end
