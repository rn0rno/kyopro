#!/usr/bin/env ruby

n = gets.chomp.to_i

inning = 0
out = 0
base = [0, 0, 0]
point = 0
loop do
  event = gets.chomp

  case event
  when 'HIT'
    point += base.shift
    base << 1
  when 'HOMERUN'
    point += base.inject(:+) + 1
    base = [0, 0, 0]
  when 'OUT'
    out += 1
    if out == 3
      puts point
      inning += 1
      out = 0
      point = 0
      base = [0, 0, 0]
    end
  end

  break if n == inning
end
