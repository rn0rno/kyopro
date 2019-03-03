#!/usr/bin/env ruby

loop do
  x = gets.chomp!.to_f
  h = gets.chomp!.to_f

  break if x.zero? && h.zero?

  hh = (x / 2 * x / 2 + h * h) ** 0.5
  puts format '%.6f', x * x + x * hh * 2

end


# 入力の省略形でプログラムきれいに
# while (x, h = gets.to_f, gets.to_f) != [0, 0]
#   hh = (x / 2 * x / 2 + h * h) ** 0.5
#   puts format '%.6f', x * x + x * hh * 2
# end
