#!/usr/bin/env ruby

n = gets.chomp!.to_i

n.times do
  ax, ay, ar, bx, by, br = gets.chomp!.split(" ").map(&:to_f)

  dist = Math.sqrt((ax - bx) ** 2 + (ay - by) ** 2)

  if (ar+br) < dist
    puts 0
  elsif (dist + br) < ar
    puts 2
  elsif (dist + ar) < br
    puts -2
  else
    puts 1
  end

end
