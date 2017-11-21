#!/usr/bin/env ruby

while line = gets
  x_1, y_1, x_2, y_2, x_3, y_3, x_p, y_p = line.chomp!.split(" ").map(&:to_f)

  a = (x_1 - x_3) * (y_p - y_3) - (y_1 - y_3) * (x_p - x_3)
  b = (x_2 - x_1) * (y_p - y_1) - (y_2 - y_1) * (x_p - x_1)
  c = (x_3 - x_2) * (y_p - y_2) - (y_3 - y_2) * (x_p - x_2)

  puts ((a > 0 && b > 0 && c > 0) || (a < 0 && b < 0 && c < 0)) ? "YES" : "NO"
end
