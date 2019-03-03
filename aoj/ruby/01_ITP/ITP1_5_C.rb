#!/usr/bin/env ruby

while (h, w = gets.chomp.split.map(&:to_i)) != [0, 0]
  str = ''
  str2 = ''
  w.times do |i|
    if i.odd?
      str += '#'
      str2 += '.'
    else
      str += '.'
      str2 += '#'
    end
  end
  h.times { |i| puts (i.odd? ? str : str2) }
  puts
end
