#!/usr/bin/env ruby

def koch(n, p1, p2)
  return if n.zero?
  s = {}
  t = {}
  u = {}

  # s, t
  s[:x] = (p1[:x] + p1[:x] + p2[:x]) / 3.0
  s[:y] = (p1[:y] + p1[:y] + p2[:y]) / 3.0
  t[:x] = (p1[:x] + p2[:x] + p2[:x]) / 3.0
  t[:y] = (p1[:y] + p2[:y] + p2[:y]) / 3.0

  # u
  u[:x] = (t[:x] - s[:x]) * 0.5 - (t[:y] - s[:y]) * Math.sqrt(3.0) * 0.5 + s[:x]
  u[:y] = (t[:x] - s[:x]) * Math.sqrt(3.0) * 0.5 + (t[:y] - s[:y]) * 0.5 + s[:y]

  koch(n - 1, p1, s)
  puts s.values.join(' ')
  koch(n - 1, s, u)
  puts u.values.join(' ')
  koch(n - 1, u, t)
  puts t.values.join(' ')
  koch(n - 1, t, p2)
end

p1 = { x: 0.0, y: 0.0 }
p2 = { x: 100.0, y: 0.0 }
n = gets.to_i

puts p1.values.join(' ')
koch(n, p1, p2)
puts p2.values.join(' ')
