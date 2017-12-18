#!/usr/bin/env ruby

sum = {A: 0, B: 0, AB: 0, O: 0}
while line = gets
  sum[line.chomp!.split(?,)[1].to_sym] += 1
end

sum.each do |k,v|
  puts v
end
