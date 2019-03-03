#!/usr/bin/env ruby

n = gets.chomp.to_i

taro = 0
hanako = 0
n.times do
  a, b = gets.chomp.split

  if a > b
    taro += 3
  elsif a == b
    taro += 1
    hanako += 1
  else
    hanako += 3
  end
end

puts "#{taro} #{hanako}"
