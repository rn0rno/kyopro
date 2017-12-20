#!/usr/bin/env ruby

w = gets.chomp.downcase

str = []

while (line = gets.chomp) != 'END_OF_TEXT'
  str << line.downcase.split
end
str.flatten!

puts str.count(w)
