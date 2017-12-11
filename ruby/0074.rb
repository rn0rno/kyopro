#!/usr/bin/env ruby

while line = gets
  s, w, h = line.chomp!.split(?,).map(&:to_f)
  puts s.to_i if w / h ** 2 >= 25
end
