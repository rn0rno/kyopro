#!/usr/bin/env ruby

n, q = gets.chomp.split.map(&:to_i)

queue = []
n.times do
  queue << gets.chomp.split
end

time = 0
until queue.empty?
  process = queue.shift
  remain = process[1].to_i
  if remain - q <= 0
    time += remain
    puts "#{process[0]} #{time}"
  else
    time += q
    queue << [process[0], remain - q]
  end
end
