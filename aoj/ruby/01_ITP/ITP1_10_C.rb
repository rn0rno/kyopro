#!/usr/bin/env ruby

until (n = gets.to_i).zero?
  s = gets.chomp.split.map(&:to_f)
  ave = s.inject(:+) / n

  puts Math.sqrt(s.map { |i| (i - ave)**2 }.inject(:+) / n)
end
