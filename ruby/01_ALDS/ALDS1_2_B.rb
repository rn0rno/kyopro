#!/usr/bin/env ruby
def selection(ary)
  n = ary.size
  cnt = 0

  n.times do |i|
    minj = i
    i.upto(n - 1) do |j|
      next if ary[minj] <= ary[j]
      minj = j
    end
    next if minj == i
    ary[i], ary[minj] = ary[minj], ary[i]
    cnt += 1
  end
  puts ary.join(' '), cnt
end

gets
selection(gets.chomp.split.map(&:to_i))
