#!/usr/bin/env ruby
a, b = gets.chomp!.split(" ").map(&:to_i)

if a > b
  puts 'a > b'
elsif a < b
  puts 'a < b'
else
  puts 'a == b'
end
