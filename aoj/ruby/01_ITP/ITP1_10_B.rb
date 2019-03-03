#!/usr/bin/env ruby

a, b, c = gets.chomp.split.map(&:to_f)

c_rad = c * Math::PI / 180

l = Math.sqrt(a**2 + b**2 - 2 * a * b * Math.cos(c_rad)) + a + b
h = b * Math.sin(c_rad)
s = a * h / 2

puts s, l, h
