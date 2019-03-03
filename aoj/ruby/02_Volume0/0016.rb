#!/usr/bin/env ruby

x, y = [0, 0]
theta = 90*(Math::PI / 180.0)

while line = gets
  d, a = line.chomp!.split(",").map(&:to_i)
  break if d.zero? && a.zero?

  x += d * Math.cos(theta)
  y += d * Math.sin(theta)
  theta -= a * (Math::PI / 180.0)
end

puts x.to_i,y.to_i
