#!/usr/bin/env ruby

next_month = false
trade = Hash.new(0)

t = Array.new
n = Array.new
while line = gets
  if line.chomp! == ''
    next_month = true
    next
  end
  c, d = line.split(?,).map(&:to_i)
  trade[c] += 1

  (next_month) ? n << c : t << c
end

(t & n).sort.each do |company|
  puts "#{company} #{trade[company]}"
end
