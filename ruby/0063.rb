#!/usr/bin/env ruby

cnt = 0
while line = gets
  str = line.chomp!.split('')
  cnt += 1 if str == str.reverse
end
puts cnt
