#!/usr/bin/env ruby

## 解法1
## 実行時間が2.5secと激オソ
# require 'prime'
#
# loop do
#   n = gets.chomp!.to_i
#   break if n.zero?
#
#   number = (2..n).reduce(:*)
#   ar = []
#   number.prime_division.each do |prm, cnt|
#     if prm == 2 || prm == 5
#       ar << cnt
#     end
#   end
#
#   ar << 0 if ar.length != 2
#   puts ar.min
# end

## 解法2
## 圧倒的に速い
# 5, 10, 15, 20, ...
# 25, 50, 75, 100, ...
# 125, 250, ... を数え上げる
while (n = gets.to_i) != 0
  num = 0
  while n != 0
    num += (n /= 5)
  end
  puts num
end
