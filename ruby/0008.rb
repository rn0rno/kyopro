#!/usr/bin/env ruby

while line = gets
  n=line.chomp!.to_i

  cnt = 0

  0.upto(9) do |a|
    0.upto(9) do |b|
      0.upto(9) do |c|
        0.upto(9) do |d|
          cnt += 1 if (a+b+c+d) == n
        end
      end
    end
  end

  puts cnt
end

# 汚いが，せいぜい9^4なので全探索
