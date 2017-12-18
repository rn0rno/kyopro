#!/usr/bin/env ruby

mountains = []
while line = gets
  mountains << line.chomp!.to_f
end

puts mountains.max - mountains.min
