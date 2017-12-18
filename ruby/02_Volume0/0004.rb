#!/usr/bin/env ruby

while line = gets
  a,b,c,d,e,f=line.chomp!.split(" ").map(&:to_f)
  # ax + by = c  x = (-by + c)/a y = (-ax + c)/b
  # dx + ey = f  x = (-ey + f)/d y = (-dx + f)/e

  # (-by + c)d = (-ey + f)a
  # -bdy + cd = -aey + af
  # (ae-bd)y = (af - cd)
  # y = (af - cd)/(ae - bd)
  # x = (bf - ce)/(bd - ae)

  # -0.000を返すことがあるため，0を加算する
  x = (b*f-c*e)/(b*d-a*e).round(3) + 0
  y = (a*f-c*d)/(a*e-b*d).round(3) + 0

  puts sprintf("%.3f %.3f", x, y)
end

# 連立方程式の場合はガウスジョルダン法，ガウス消去法で解くことが必要になってくる
