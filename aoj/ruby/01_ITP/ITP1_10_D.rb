#!/usr/bin/env ruby

def minc(x, y, pp)
  x.zip(y).map { |k| (k[0] - k[1]).abs**pp }.inject(:+)**(1.0 / pp)
end

def chv(x, y)
  x.zip(y).map { |k| (k[0] - k[1]).abs }.max
end

n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_f)
y = gets.chomp.split.map(&:to_f)

puts minc(x, y, 1)
puts minc(x, y, 2)
puts minc(x, y, 3)
puts chv(x, y)
