#!/usr/bin/env ruby

while line = gets
  m,d = line.chomp!.split(' ').map(&:to_i)
  break if m.zero? && d.zero?

  puts Time.new(2004, m, d).strftime('%A')
end
