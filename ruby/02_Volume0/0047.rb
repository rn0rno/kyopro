#!/usr/bin/env ruby

ball = {A: 1, B: 0, C: 0}

while line = gets
  a, b = line.chomp!.split(?,).map(&:to_sym)

  ball[a], ball[b] = ball[b], ball[a]
end

ball.each do |k, v|
  puts k.to_s if v == 1
end
