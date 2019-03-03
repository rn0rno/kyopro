#!/usr/bin/env ruby

k, sum, ave = 0, 0, 0.0

while line = gets
  val, num = line.chomp!.split(",").map(&:to_i)

  sum += val * num
  ave += num
  k += 1
end

puts [sum, (ave/k).round]
