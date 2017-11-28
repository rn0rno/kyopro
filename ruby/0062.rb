#!/usr/bin/env ruby

while line = gets
  num = line.chomp!.split('').map(&:to_i)

  while num.length != 1
    num_tmp = []
    (num.length-1).times do |i|
      num_tmp << (num[i] + num[i+1]) % 10
    end
    num = num_tmp
  end

  puts num[0]
end
