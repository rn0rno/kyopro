#!/usr/bin/env ruby

while line = gets
  xa, ya, xb, yb, xc, yc, xd, yd = line.chomp!.split.map(&:to_f)

  puts ((xb-xa) * (xd-xc) + (yb-ya) * (yd-yc)).abs < 1e-12 ? "YES" : "NO"
end

# 2ベクトルの内積が0の時，ベクトルは直交する．
# 各ベクトルを算出して内積を出してあげれば良い．誤差を許容するために1e-12を使うと良い．
