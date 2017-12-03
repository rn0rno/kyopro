#!/usr/bin/env ruby

while line = gets
  n, s = line.chomp!.split.map(&:to_i)
end



# 以下TLEのため
# max_value = 9 * (1..9).map{ |i| i**2 }.inject(:+)
#
# while line = gets
#   n, s = line.chomp!.split.map(&:to_i)
#
#   nums = (0..9).to_a.permutation(n)
#   # 枝刈り
#   nums = nums.select { |ary| ary.inject(:+) < s } if s < 9 * n
#   nums = [] if s > max_value
#
#   cnt = 0
#   nums.each do |ary|
#     sum = 0
#
#     n.downto(1) do |i|
#       sum += ary[i - 1] * i
#       break if sum > s
#     end
#     cnt += 1 if (sum-s).zero?
#
#
#     # これでもTLE
#     # (1..n).each { |i| sum += ary[i - 1] * i }
#     # cnt += 1 if sum == s
#
#     # 以下実行速度が遅い
#     # t_ary = []
#     # until ary.length.zero?
#     #   t_ary << ary.clone
#     #   ary.pop
#     # end
#     # cnt += 1 if t_ary.each_with_object([]) { |e, a| e.each_index { |i| a[i] = a[i].to_i + e[i] } }.inject(:+) == s
#   end
#   puts cnt
#
# end
