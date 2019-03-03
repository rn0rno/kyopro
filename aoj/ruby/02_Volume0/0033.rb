#!/usr/bin/env ruby

n = gets.chomp!.to_i

n.times do
  balls = gets.chomp!.split(" ").map(&:to_i)
  a,b=0,0

  ng = false
  balls.each do |ball|
    if a < ball
      a = ball
    elsif b < ball
      b = ball
    else
      ng = true
    end
  end

  puts (ng) ? "NO" : "YES"
end
