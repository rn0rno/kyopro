#!/usr/env/bin ruby

r, c = gets.chomp.split.map(&:to_i)

sheet = []
r.times do
  sheet << gets.chomp.split.map(&:to_i)
end

sheet.map{|e| e << e.inject(:+)}.transpose.map{|e| e << e.inject(:+)}.transpose.map{|e| puts e * ' '}
