#!/usr/bin/env ruby

while line = gets
  v = line.chomp!.to_f

  need_height = 4.9 * (v/9.8) ** 2
  puts ((need_height+5) / 5).ceil
end
