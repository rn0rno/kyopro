#!/usr/bin/env ruby

while line = gets
  a = line.chomp!.split(" ").map(&:to_i)
  b = gets.chomp!.split(" ").map(&:to_i)

  hit, blow = 0, 0
  4.times do |n|
      hit += 1 if a[n] == b[n]
      blow += 1 if a.include?(b[n])
  end
  puts "#{hit} #{blow - hit}"
end
