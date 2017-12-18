#!/usr/bin/env ruby

x, y = gets.split.map(&:to_i)
puts x.gcd(y)

# # ユークリッドの互除法を用いた解法
# a, b = gets.split.map(&:to_i)
# a, b = b, a if b < a
#
# # ここで`while 1 < a`としているのは計算量の削減
# a, b = b % a, a while 1 < a
# # うえで`while 1<= a`とすればここは`puts b`でOK
# puts (a == 1 ? 1 : b)
